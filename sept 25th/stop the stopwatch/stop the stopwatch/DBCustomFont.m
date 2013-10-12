//
//  DBCustomFont.m
//  stop the stopwatch
//
//  Created by Deb Bostjancic on 9/22/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBCustomFont.h"

@implementation DBCustomFont

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}
- (void)awakeFromNib { [super awakeFromNib]; self.font = [UIFont fontWithName:@"peach_milk2.ttf" size:self.font.pointSize]; } 

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
