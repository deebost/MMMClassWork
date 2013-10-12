//
//  Judge.m
//  RockPaperScissors
//
//  Created by Kaila Mackey on 9/17/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import "Judge.h"

@implementation Judge
-(BOOL) didComputerWin: (NSString *) computer  from: (NSString *) user {
    
    BOOL win;
    
    if ([computer isEqualToString: user]){
        win = NO;
    }
    else if (([computer isEqualToString:@"rock"]) &&
             ([user isEqualToString:@"scissors"])) {
        win = YES;
        
    }
    else if (([computer isEqualToString:@"scissors"]) &&
             ([user isEqualToString:@"paper"])) {
        win = YES;
        
    }
    else if (([computer isEqualToString:@"paper"]) &&
         ([user isEqualToString:@"rock"])) {
        win = YES;
    }
else{
    win = NO;
    
    return win;
}
}



@end
