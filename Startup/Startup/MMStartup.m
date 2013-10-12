//
//  MMStartup.m
//  Startup
//
//  Created by Kyle Mai on 9/19/13.
//  Copyright (c) 2013 Kyle Mai. All rights reserved.
//

#import "MMStartup.h"
#import "MMEmployee.h"

@implementation MMStartup

@synthesize bossArray;
@synthesize managerArray;
@synthesize coderArray;
@synthesize designerArray;


- (id)init
{
    self = [super init];
    
    if (self) {
        bossArray = [[NSMutableArray alloc] init];
        managerArray = [[NSMutableArray alloc] init];
        coderArray = [[NSMutableArray alloc] init];
        designerArray = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)addEmployee:(MMEmployee *)employee
{
    NSString *employeeType = [employee.type lowercaseString];
    
    if ([employeeType isEqualToString:@"boss"])
    {
        [bossArray addObject:employee];
    }
    else if ([employeeType isEqualToString:@"manager"])
    {
        [managerArray addObject:employee];
    }
    else if ([employeeType isEqualToString:@"coder"])
    {
        [coderArray addObject:employee];
    }
    else
    {
        [designerArray addObject:employee];

    }
    
}

@end
