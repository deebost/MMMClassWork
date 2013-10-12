//
//  MyView.m
//  ViewsandTouches
//
//  Created by Deb Bostjancic on 9/26/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "MyView.h"


@implementation MyView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.delegate didChooseView:self];
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
