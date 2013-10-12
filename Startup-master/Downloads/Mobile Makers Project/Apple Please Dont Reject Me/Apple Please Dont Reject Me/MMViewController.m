//
//  MMViewController.m
//  Apple Please Dont Reject Me
//
//  Created by Kyle Mai on 9/17/13.
//  Copyright (c) 2013 Kyle Mai. All rights reserved.
//

#import "MMViewController.h"
#import "MMMyClass.h"
#import "MMAnotherNewClass.h"

@interface MMViewController ()

@end

@implementation MMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    MMMyClass *myclass = [[MMMyClass alloc] init];
    [myclass myMethod];
    
    MMAnotherNewClass *anotherClass = [[MMAnotherNewClass alloc] init];
    [anotherClass CallingTo:@"Kyle" from:@"Pepper"];    
}


@end
