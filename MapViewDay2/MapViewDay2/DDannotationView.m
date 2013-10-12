//
//  DDannotationView.m
//  MapViewDay2
//
//  Created by Deb Bostjancic on 10/8/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DDannotationView.h"

@implementation DDannotationView

- (id)initWithAnnotation:(id<MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.image = [UIImage imageNamed:@"mobilemakers"];
    }
    return self;
}


@end
