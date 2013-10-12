//
//  MMViewController.m
//  Startup
//
//  Created by Kyle Mai on 9/19/13.
//  Copyright (c) 2013 Kyle Mai. All rights reserved.
//

#import "MMViewController.h"
#import "MMPerson.h"
#import "MMEmployee.h"
#import "MMManager.h"
#import "MMStartup.h"

@interface MMViewController ()
{
    MMStartup *startup;
}

@end

@implementation MMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Initiate stuff
    startup = [[MMStartup alloc] init];
    
    
    MMEmployee *employee1 = [[MMEmployee alloc] initWithEmployeeName:@"Kyle" employeeEmail:@"kyle@mai" employeeType:@"Boss"];
    
    MMPerson *person1;
    person1 = [[MMPerson alloc] initWithPerson:employee1.name email:employee1.email];
    person1 = [person1 copy:person1];
    [startup addEmployee:employee1];
    
    MMEmployee *employee2 = [[MMEmployee alloc] initWithEmployeeName:@"Dan" employeeEmail:@"Dan@Bost" employeeType:@"Manager"];
    MMPerson *person2;
    person2 = [[MMPerson alloc] initWithPerson:employee1.name email:employee1.email];
    person2 = [person2 copy:person2];
    [startup addEmployee:employee2];
    
    MMEmployee *employee3 = [[MMEmployee alloc] initWithEmployeeName:@"Mychilo" employeeEmail:@"Mychilo@MM" employeeType:@"Coder"];
    MMPerson *person3;
    person3 = [[MMPerson alloc] initWithPerson:employee1.name email:employee1.email];
    person3 = [person3 copy:person3];
    [startup addEmployee:employee3];
    
    MMEmployee *employee4 = [[MMEmployee alloc] initWithEmployeeName:@"Duy" employeeEmail:@"Duy@Mai" employeeType:@"Designer"];
    MMPerson *person4;
    person4 = [[MMPerson alloc] initWithPerson:employee1.name email:employee1.email];
    person4 = [person4 copy:person4];
    [startup addEmployee:employee4];
    
    NSLog(@"--- Startup");
    
    for (MMEmployee *employee in startup.bossArray)
    {
        NSLog(@"---- %@ %@ %@", employee.name, employee.email, employee.type);
    }
    
    for (MMEmployee *employee in startup.managerArray)
    {
        NSLog(@"------ %@ %@ %@", employee.name, employee.email, employee.type);
    }
    
    for (MMEmployee *employee in startup.coderArray)
    {
        NSLog(@"------ %@ %@ %@", employee.name, employee.email, employee.type);
    }

    for (MMEmployee *employee in startup.designerArray)
    {
        NSLog(@"------ %@ %@ %@", employee.name, employee.email, employee.type);
    }

}


@end
