//
//  DBViewController.h
//  Mapping! Mapping!
//
//  Created by Deb Bostjancic on 10/8/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface DBViewController : UIViewController <MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *busStopMapView;

@property (strong, nonatomic) NSDictionary *busStopDictionary;
@property (strong, nonatomic) NSDictionary *detailBusStopDictionary;
@property (strong, nonatomic) NSMutableArray *busStopLocations;
@property (strong, nonatomic) NSMutableArray *busStopDataArray;
@property (weak, nonatomic) IBOutlet UIView *detailView;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *routesLabel;
@property (weak, nonatomic) IBOutlet UILabel *directionLabel;
@property (weak, nonatomic) IBOutlet UILabel *transferLabel;

@end
