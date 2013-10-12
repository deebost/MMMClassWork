//
//  DBViewController.m
//  Address Book
//
//  Created by Deb Bostjancic on 9/30/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"

@interface DBViewController ()

@end

@implementation DBViewController

NSMutableArray *people;

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    people = [[NSMutableArray alloc] init];
    Person *tempPerson = [[Person alloc] init];
    tempPerson.firstName = @"John";
    tempPerson.lastName = @"Doe";
    tempPerson.emailAddress = @"JDoe@yahoo.com";
    tempPerson.phoneNumber = @"555-5555";
    [people addObject:tempPerson];
    tempPerson.firstName = @"Jack";
    tempPerson.lastName = @"Miner";
    tempPerson.emailAddress = @"JMiner@yahoo.com";
    tempPerson.phoneNumber = @"666-5555";
    [people addObject:tempPerson];
    tempPerson.firstName = @"Ralph";
    tempPerson.lastName = @"Done";
    tempPerson.emailAddress = @"RDone@yahoo.com";
    tempPerson.phoneNumber = @"555-6666";
    [people addObject:tempPerson];
    tempPerson.firstName = @"Marge";
    tempPerson.lastName = @"Dont";
    tempPerson.emailAddress = @"MDont@yahoo.com";
    tempPerson.phoneNumber = @"666-6666";
    [people addObject:tempPerson];
}

@end
