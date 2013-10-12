//
//  AcademyLocation.h
//  MapViewDay2
//
//  Created by Deb Bostjancic on 10/8/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface AcademyLocation : NSObject <MKAnnotation>

@property (nonatomic, readonly, copy) NSString *title;
@property (nonatomic) CLLocationCoordinate2D coordinate;

@end
