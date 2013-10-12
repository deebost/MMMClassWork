//
//  DBViewController.m
//  Map It!
//
//  Created by Deb Bostjancic on 10/7/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"

@interface DBViewController ()
{
    CLLocationManager *locationMang;
    MKCoordinateSpan span;
    CLLocationCoordinate2D currentLatLong;
    MKPointAnnotation * point;
    MKCoordinateRegion region;
    int pointCount;
}


@end

@implementation DBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    MKMapView *myMapView = [[MKMapView alloc] init];
    myMapView.delegate = self;
    pointCount = 0;
    point = [[MKPointAnnotation alloc] init];
    currentLatLong.latitude = 41.89;
    currentLatLong.longitude = -87.63;
    
    [self centerMapOnLat:currentLatLong.latitude andLong:currentLatLong.longitude];
    [point setTitle:@"Mobile Makers"];
}

-(void)centerMapOnLat:(float)aLatitude andLong:(float)aLongitude {
    currentLatLong.latitude = aLatitude;
    currentLatLong.longitude = aLongitude;
    span.latitudeDelta = 0.01;
    span.longitudeDelta = 0.01;
    [point setCoordinate:currentLatLong];
    [point setTitle:[NSString stringWithFormat:@"Point %i", pointCount]];
    region = MKCoordinateRegionMake(currentLatLong, span);
    
    _mapItMapView.region = region;
    _mapItMapView.centerCoordinate = currentLatLong;
    [_mapItMapView addAnnotation:point];
    [_mapItMapView setRegion:region animated:YES];

    
    
}

- (IBAction)refreshOnPress:(id)sender {
    

    pointCount++;
    
    [self centerMapOnLat:[_latitudeTextField.text floatValue] andLong:[_longtitudeTextField.text floatValue]];
    [_longtitudeTextField resignFirstResponder];
    [_latitudeTextField resignFirstResponder];
    
}
@end
