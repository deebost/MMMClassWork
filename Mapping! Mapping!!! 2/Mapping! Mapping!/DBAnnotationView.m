//
//  DBAnnotationView.m
//  Mapping! Mapping!
//
//  Created by Deb Bostjancic on 10/8/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBAnnotationView.h"

@implementation DBAnnotationView

- (id)initWithAnnotation:(id<MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.image = [UIImage imageNamed:@"monobus"];
    }
    return self;
}

@end
