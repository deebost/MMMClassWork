//
//  DBViewController.h
//  Map It!
//
//  Created by Deb Bostjancic on 10/7/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface DBViewController : UIViewController < MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapItMapView;
- (IBAction)refreshOnPress:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *longtitudeTextField;

@property (weak, nonatomic) IBOutlet UITextField *latitudeTextField;

@end
