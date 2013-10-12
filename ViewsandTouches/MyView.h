//
//  MyView.h
//  ViewsandTouches
//
//  Created by Deb Bostjancic on 9/26/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol MatchDelegate <NSObject>

-(void) didChooseView: (UIView *)view;


@end


@interface MyView : UIView
@property (strong, nonatomic) id<MatchDelegate> delegate;
@property BOOL viewHasBeenOpened;

@end
