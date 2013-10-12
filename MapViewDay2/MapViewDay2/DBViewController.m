//
//  DBViewController.m
//  MapViewDay2
//
//  Created by Deb Bostjancic on 10/8/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"
#import "AcademyLocation.h"
#import "DDannotationView.h"

@interface DBViewController ()

@end

@implementation DBViewController {
    CLLocationCoordinate2D coord;
}


-(void)viewDidAppear:(BOOL)animated {
    //can do in viewdidload under super viewDidLoad but this way animates, cant animate in view did load
    
    coord = CLLocationCoordinate2DMake(41.90, -87.65);
    MKCoordinateSpan span        = MKCoordinateSpanMake(0.4, 0.29);
    
    [self.mapView setRegion:MKCoordinateRegionMake(coord, span) animated: YES];
    AcademyLocation *academyLocation = [[AcademyLocation alloc] init];
    academyLocation.coordinate = coord;
    [self.mapView addAnnotation:academyLocation];
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
        NSString *resuseId = @"abc";
    
    MKAnnotationView *view = [mapView dequeueReusableAnnotationViewWithIdentifier:resuseId];
    if (!view)
    {
        view = [[DDannotationView alloc] initWithAnnotation:annotation reuseIdentifier:resuseId];
        view.canShowCallout = YES;
        view.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    }
    else {
        view.annotation = annotation;
    }
    return view;
}

- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control
{
    NSLog(@"tapped");
    Class mapItemClass = [MKMapItem class];
    if (mapItemClass && [mapItemClass respondsToSelector:@selector(openMapsWithItems:launchOptions:)])
    {
        // Create an MKMapItem to pass to the Maps app
        CLLocationCoordinate2D coordinate = coord;
        MKPlacemark *placemark = [[MKPlacemark alloc] initWithCoordinate:coordinate
                                                       addressDictionary:nil];
        MKMapItem *mapItem = [[MKMapItem alloc] initWithPlacemark:placemark];
        [mapItem setName:@"Mobile Makers"];
        // Pass the map item to the Maps app
        [mapItem openInMapsWithLaunchOptions:nil];
    }
}
@end
