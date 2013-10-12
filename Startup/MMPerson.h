//
//  MMPerson.h
//  Startup
//
//  Created by Kyle Mai on 9/19/13.
//  Copyright (c) 2013 Kyle Mai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MMPerson : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *email;

-(id)initWithPerson: (NSString *) employeeName email:(NSString *) employeeEmail;

-(MMPerson *)copy: (MMPerson *)person;

@end
