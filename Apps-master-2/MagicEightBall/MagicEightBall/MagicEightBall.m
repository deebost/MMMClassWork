//
//  MagicEightBall.m
//  MagicEightBall
//
//  Created by Sviatoslav Lytovka on 9/17/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import "MagicEightBall.h"

@implementation MagicEightBall

-(NSString *) randomString {
    int x=rand()%5;
    if (x==0) {
        return @"Maybe..";
    }
    if (x==1) {
        return @"Most likely..";
    }
    if (x==2) {
        return @"I think so..";
    }
    if (x==3) {
        return @"Perhaps..";
    }
    if (x==4) {
        return @"Not today..";
    }
    if (x==5) {
        return @"Predominately..";
    }
}

@end
