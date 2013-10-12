//
//  ComputerHand.m
//  RockPaperScissors
//
//  Created by Kaila Mackey on 9/17/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import "ComputerHand.h"

@implementation ComputerHand

-(NSString*) randomizer{
    
    NSArray* choices;
    choices = @[@"rock", @"paper", @"scissors"];
    
    return[choices objectAtIndex:arc4random() % 3];
    
}


@end
