//
//  MMPerson.m
//  Startup
//
//  Created by Kyle Mai on 9/19/13.
//  Copyright (c) 2013 Kyle Mai. All rights reserved.
//

#import "MMPerson.h"

@implementation MMPerson

@synthesize name;
@synthesize email;


-(id)initWithPerson: (NSString *) employeeName email:(NSString *) employeeEmail
{
    self = [super init];
    if (self) {
        name = employeeName;
        email = employeeEmail;
        
    }
    return self;
}

//-(id)initWithPerson
//{
    //self = [super init];
    //if (self)


-(MMPerson *)copy: (MMPerson *)person
{
    return person;
    
}

@end
