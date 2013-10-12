//
//  Judge.h
//  RockPaperScissors
//
//  Created by Kaila Mackey on 9/17/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Judge : NSObject

-(BOOL) didComputerWin: (NSString *) computer  from: (NSString *) user;
    
@end
