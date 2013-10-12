//
//  DBPixelView.m
//  AnimationHackwich 4.4
//
//  Created by Deb Bostjancic on 10/10/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBPixelView.h"

@implementation DBPixelView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
        [UIView animateWithDuration:0.4f animations:^{
            self.center = CGPointMake(50, 50);
            self.backgroundColor = [UIColor whiteColor];
        }];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
        [UIView animateWithDuration:0.5f animations:^{
            
            int x = (arc4random()%300 + 10);
            int y = (arc4random()%300 + 10);
            
//            self.center = CGPointMake(self.center.x + arc4random(), self.center.y + arc4random());
                        self.center = CGPointMake(x, y);
            
        }];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
        [UIView animateWithDuration:0.5f animations:^{
            self.backgroundColor = [UIColor magentaColor];
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.5f animations:^{
                self.backgroundColor = [UIColor cyanColor];
            }];
        }];
}

@end
