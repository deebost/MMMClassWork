//
//  DBViewController.h
//  MapViewDay2
//
//  Created by Deb Bostjancic on 10/8/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@interface DBViewController : UIViewController <MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *busStopDetailView;
@property (weak, nonatomic) IBOutlet UILabel *transferLabel;
@property (weak, nonatomic) IBOutlet UILabel *routesLabel;
@property (weak, nonatomic) IBOutlet UILabel *directionLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@end
