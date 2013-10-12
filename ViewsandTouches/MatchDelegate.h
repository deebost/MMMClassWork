//
//  MatchDelegate.h
//  ViewsandTouches
//
//  Created by Deb Bostjancic on 9/26/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyView.h"

@protocol MatchDelegate <NSObject>

-(void) didChooseView: (MyView *)view;

@end
