//
//  MMObject.m
//  Memory
//
//  Created by Deb Bostjancic on 9/26/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "MMObject.h"

@implementation MMObject
-(void) dealloc{
    NSLog(@"MMObject deallocated %@", self);
    [super dealloc];
}

@end
