//
//  ComputerHand.m
//  RockPaperScissors
//
//  Created by Sviatoslav Lytovka on 9/17/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import "ComputerHand.h"

@implementation ComputerHand
-(NSString*) randomHand
{
    int x=rand()%3;
    if (x==0) {
        return @"rocks";
    }
    if (x==1) {
        return @"scissors";
    }
    else {
        return @"paper";
    }
}

@end
