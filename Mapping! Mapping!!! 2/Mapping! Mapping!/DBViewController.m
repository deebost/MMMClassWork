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
#import <CoreLocation/CoreLocation.h>

@interface DBViewController ()

@end

@implementation DBViewController {
    
    CLLocationCoordinate2D coord;
}

- (MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id <MKOverlay>)overlay
{
    if ([overlay isKindOfClass:[MKPolygon class]])
    {
        MKPolygonView* dbView = [[MKPolygonView alloc] initWithPolygon:(MKPolygon*)overlay];
        
        dbView.fillColor = [UIColor colorWithRed:255 green:0 blue:255 alpha:0.4];
        dbView.strokeColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:.75];
        dbView.lineWidth = 10;
        
        
        return dbView;
    }
    return nil;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    CLLocationCoordinate2D  points[11];
    
    points[0] = CLLocationCoordinate2DMake(41.875680, -87.636738);
    points[1] = CLLocationCoordinate2DMake(41.876799, -87.636738);
    points[2] = CLLocationCoordinate2DMake(41.885618, -87.636952);
    points[3] = CLLocationCoordinate2DMake(41.886432, -87.636244);
    points[4] = CLLocationCoordinate2DMake(41.886895, -87.635386);
    points[5] = CLLocationCoordinate2DMake(41.886880, -87.626889);
    points[6] = CLLocationCoordinate2DMake(41.887678, -87.625966);
    points[7] = CLLocationCoordinate2DMake(41.888269, -87.625301);
    points[8] = CLLocationCoordinate2DMake(41.888381, -87.624507);
    points[9] = CLLocationCoordinate2DMake(41.875728, -87.624249);
    points[10] = CLLocationCoordinate2DMake(41.875632, -87.635837);
    
    MKPolygon* loopPolygon = [MKPolygon polygonWithCoordinates:points count:11];
    [_busStopMapView addOverlay:loopPolygon];
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

-(void)detailViewDictionary
{
    _detailBusStopDictionary = _busStopDictionary;
    _busStopLocations = _detailBusStopDictionary[@"row"];
    for (NSDictionary *detailDictionary in _busStopLocations)
    {
        DB_BusStopLocation *detailBusStop = [[DB_BusStopLocation alloc] init];
        
        detailBusStop.name = detailDictionary[@"cta_stop_name"];
        detailBusStop.transfers = detailDictionary[@"inter_modal"];
        detailBusStop.direction = detailDictionary[@"direction"];
        detailBusStop.routes = detailDictionary[@"routes"];
        [self.busStopMapView inputView];
        
        _nameLabel.text = detailBusStop.name;
        _directionLabel.text = detailBusStop.direction;
        _routesLabel.text = detailBusStop.routes;
        _transferLabel.text = detailBusStop.transfers;
        
        
        
    }
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
    [self detailViewDictionary];
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
