//
//  DBViewController.m
//  Mapping
//
//  Created by Deb Bostjancic on 10/7/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"

@interface DBViewController ()
{
    CLLocationManager *locationManager;
}
- (IBAction)startLocating:(id)sender;

@end

@implementation DBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
}

//-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
//{
//    NSLog(@"Location Changed %@", [locations objectAtIndex:0]);
//}


-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"error %@", error);
}
- (IBAction)startLocating:(id)sender
{
    [locationManager startUpdatingLocation];
}
@end
