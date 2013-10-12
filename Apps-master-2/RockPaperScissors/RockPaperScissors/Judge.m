//
//  Judge.m
//  RockPaperScissors
//
//  Created by Sviatoslav Lytovka on 9/17/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import "Judge.h"

@implementation Judge
-(BOOL) didComputerWin: (NSString*) computer vs:(NSString *) player
// isEqualToString returns Boolean value, indicates whether the strings are equal to or not
{  if (([computer isEqualToString:@"rock"] && [player isEqualToString:@"scissors"]) ||
       ([computer isEqualToString:@"paper"] && [player isEqualToString:@"rock"]) ||
       ([computer isEqualToString:@"scissors"] && [player isEqualToString:@"paper"]))
    {
    
        return YES;
    }
    else {
        return NO;
    }

}


@end
