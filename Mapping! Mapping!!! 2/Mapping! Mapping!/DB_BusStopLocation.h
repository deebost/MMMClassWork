//
//  DB_BusStopLocation.h
//  Mapping! Mapping!
//
//  Created by Deb Bostjancic on 10/8/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface DB_BusStopLocation : NSObject <MKAnnotation>

@property (nonatomic, copy) NSString *title;
@property (nonatomic) CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString *subtitle;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *routes;
@property (nonatomic, strong) NSString *direction;
@property (nonatomic, strong) NSString *transfers;

@end
