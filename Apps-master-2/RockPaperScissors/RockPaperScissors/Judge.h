//
//  Judge.h
//  RockPaperScissors
//
//  Created by Sviatoslav Lytovka on 9/17/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Judge : NSObject
-(BOOL) didComputerWin: (NSString*) computer vs:(NSString *) player;
@end
