//
//  MMEmployee.h
//  Startup
//
//  Created by Kyle Mai on 9/19/13.
//  Copyright (c) 2013 Kyle Mai. All rights reserved.
//

#import "MMPerson.h"

@interface MMEmployee : MMPerson

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *email;
@property (strong, nonatomic) NSString *type;

-(id)initWithEmployeeName:(NSString *)name employeeEmail:(NSString *)email employeeType:(NSString *)type;

@end
