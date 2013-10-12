//
//  DBViewController.m
//  Mapping! Mapping!
//
//  Created by Deb Bostjancic on 10/8/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"
#import "DB_BusStopLocation.h"
#import "DBAnnotationView.h"

@interface DBViewController ()

@end

@implementation DBViewController {
    
    CLLocationCoordinate2D coord;
}

-(void)setRegion
{
    coord = CLLocationCoordinate2DMake(41.845, -87.68);
    MKCoordinateSpan span        = MKCoordinateSpanMake(0.4, 0.29);
    
    [self.busStopMapView setRegion:MKCoordinateRegionMake(coord, span) animated: YES];
    DB_BusStopLocation *busStopLocation = [[DB_BusStopLocation alloc] init];
    busStopLocation.coordinate = coord;
    [self.busStopMapView addAnnotation:busStopLocation];
}

-(void)viewDidAppear:(BOOL)animated {
    [self getBusStopInfo];
    [self setRegion];
    
    
}
-(void)getBusStopInfo {
    NSURL *url = [NSURL URLWithString:@"http://mobilemakers.co/lib/bus.json"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [NSURLConnection sendAsynchronousRequest:request
                                       queue:[NSOperationQueue mainQueue]
                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError)
    {
        _busStopDictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:&connectionError];
        _busStopDataArray = _busStopDictionary[@"row"];

            [self annotateBusStops];
     }];
}

-(void)annotateBusStops{
        for (NSDictionary *bustDictionary in _busStopDataArray)
        {
            
            DB_BusStopLocation *busStop = [[DB_BusStopLocation alloc] init];
            //NSLog(@"%@", busStopDictionary [@"cta_stop_name"]);
            busStop.title = bustDictionary[@"cta_stop_name"];
            busStop.subtitle = bustDictionary[@"routes"];
            busStop.coordinate = CLLocationCoordinate2DMake([bustDictionary[@"latitude"] floatValue], [bustDictionary [@"longitude"] floatValue]);
            [self.busStopMapView addAnnotation:busStop];
        }
}

- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control
{

    
    [self switchView];
}
- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    NSString *reuseId = @"abc";
    MKAnnotationView *view = [mapView dequeueReusableAnnotationViewWithIdentifier:reuseId];
    if (!view)
    {
        view = [[DBAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:reuseId];
        view.canShowCallout = YES;
        view.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    }
    else {
        view.annotation = annotation;
        
    }
    return view;
    
}

-(void)switchView {
    if (_detailView.alpha) {
        [UIView animateWithDuration:.33f animations:^{
            _detailView.hidden = YES;
            [_detailView setAlpha:0];
        }];
    }else {
        [UIView animateWithDuration:0.33f animations:^{
            _detailView.hidden = NO;
            [_detailView setAlpha:1];
        }];
    }
}
@end
