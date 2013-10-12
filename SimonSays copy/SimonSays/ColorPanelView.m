//
//  ColorPanelView.m
//  SimonSays
//
//  Created by Agnt86 on 10/10/13.
//  Copyright (c) 2013 Agnt86. All rights reserved.
//

#import "ColorPanelView.h"

@implementation ColorPanelView



- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
    
    
    
    
   

    
    
//    if ([self.tag isEqualToString: @"1"])
//    {
//        
//    }
//    
//    for (int i= 0; i < tagArray.count; i++) {
//        if (self.tag isEqualToString: tagArray{i
//    }
//    
    
}


-(id)initWithCoder:(NSCoder *)aDecoder
{
    
    self = [super initWithCoder:aDecoder];
    
    

    
    if (self.tag == 1)
    {
        self.backgroundColor = [UIColor redColor];
        
    }
    if (self.tag == 2)
    {
        self.backgroundColor = [UIColor blueColor];
        
    }
    if (self.tag == 3)
        
    {
        self.backgroundColor = [UIColor greenColor];
        
    }
    if (self.tag == 4)
        
    {
        self.backgroundColor = [UIColor yellowColor];
        
    }
    if (self.tag == 5)
        
    {
        self.backgroundColor = [UIColor orangeColor];
        
    }
    if (self.tag == 6)
        
    {
        self.backgroundColor = [UIColor purpleColor];
        
    }

    
    return self;
    
    
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
