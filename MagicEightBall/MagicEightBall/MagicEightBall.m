//
//  MagicEightBall.m
//  MagicEightBall
//
//  Created by Deb Bostjancic on 9/17/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import "MagicEightBall.h"

@implementation MagicEightBall
-(NSString*) randomizer{
    
    NSArray* choices;
    choices = @[@"Buy a lottery ticket", @"Glad im not in your shoes", @"unknown try again", @"be weary of dogs today", @"time to turn to jesus", @"not sure, please dont try again", @"Your dog is dead", @"I wouldnt fall asleep if i were you"];
    
    return[choices objectAtIndex:arc4random() % 3];
    
}


@end
