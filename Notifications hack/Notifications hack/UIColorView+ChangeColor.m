//
//  UIColorView+ChangeColor.m
//  Notifications hack
//
//  Created by Deb Bostjancic on 10/9/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "UIColorView+ChangeColor.h"

@implementation UIColor (ChangeColor)

+ (UIColor *)changeColorWithString:(NSString *)color{
    
    
    if ([ color isEqualToString: @"blue"])
        return [UIColor blueColor];
    else if ([color isEqualToString: @"red"])
        return [UIColor redColor];
    else if ([color isEqualToString:@"green"])
        return [UIColor greenColor];
    else if ([color isEqualToString:@"purple"])
        return [UIColor purpleColor];
    else if ([color isEqualToString:@"orange"])
        return [UIColor orangeColor];
    else if ([color isEqualToString:@"black"])
        return [UIColor blackColor];
    else
        return [UIColor whiteColor];
    
}

@end
