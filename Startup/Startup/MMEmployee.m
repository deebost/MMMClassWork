//
//  MMEmployee.m
//  Startup
//
//  Created by Kyle Mai on 9/19/13.
//  Copyright (c) 2013 Kyle Mai. All rights reserved.
//

#import "MMEmployee.h"
#import "MMPerson.h"

@implementation MMEmployee

@synthesize name;
@synthesize email;
@synthesize type;

-(id)initWithEmployeeName:(NSString *)employeeName employeeEmail:(NSString *)employeeEmail employeeType:(NSString *)employeeType
{
    self = [super init];
    
    if (self)
    {
        name = employeeName;
        email = employeeEmail;
        type = employeeType;
        
        MMPerson *person = [[MMPerson alloc] init];
        person.name = name;
        person.email = email;
    }
    
    return self;
}

@end
