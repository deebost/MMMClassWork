//
//  UIColorView.m
//  Notifications hack
//
//  Created by Deb Bostjancic on 10/9/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "UIColorView.h"
#import "UIColorView+ChangeColor.h"

@implementation UIColorView

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    
   __unused id observer = [nc addObserverForName:@"newColor"
                    object:nil
                     queue:[NSOperationQueue mainQueue]
                usingBlock:^(NSNotification *note)
    {
        
                    [self newColor:note];
    }];
    return self;
    
}

-(void)newColor:(NSNotification *)color{
    
    
    self.backgroundColor = [UIColor changeColorWithString:color.object];
}

@end
