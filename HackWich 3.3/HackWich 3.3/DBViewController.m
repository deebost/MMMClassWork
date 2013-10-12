//
//  DBViewController.m
//  HackWich 3.3
//
//  Created by Deb Bostjancic on 10/2/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"
#import "Person.h"

@interface DBViewController ()

@end

@implementation DBViewController

//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//	NSArray* things = @[@"b",@"c",@"a"];
//    NSLog(@"Array before sorting %@", things);
//    
//    NSArray* sortedThings = [things sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
//        return [obj1 compare:obj2];
//    }];
//    NSLog(@"Array after sorting %@", sortedThings);
//}

//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//    NSMutableArray *people = [[NSMutableArray alloc] init];
//    
//    Person *person1 = [[Person alloc] init];
//    person1.firstName = @"Jesus";
//    person1.lastName = @"Shaves";
//    [people addObject:person1];
//    
//    Person *person2 = [[Person alloc] init];
//    person2.firstName = @"Jack";
//    person2.lastName = @"Hamburger";
//    [people addObject:person2];
//    
//    Person *person3 = [[Person alloc] init];
//    person3.firstName = @"Bill";
//    person3.lastName = @"Braskey";
//    [people addObject:person3];
//    
//    Person *person4 = [[Person alloc] init];
//    person4.firstName = @"Dan";
//    person4.lastName = @"Bostjancic";
//    [people addObject:person4];
//    
//    Person *person5 = [[Person alloc] init];
//    person5.firstName = @"JeeWizz";
//    person5.lastName = @"Shaves";
//    [people addObject:person5];
//    
//    Person *person6 = [[Person alloc] init];
//    person6.firstName = @"Heyzeus";
//    person6.lastName = @"Shaves";
//    [people addObject:person6];
//    
//    [people sortUsingComparator:^NSComparisonResult(Person *obj1, Person *obj2)
//    {
//        int lastNameOrder = [obj1.lastName compare:obj2.lastName];
//        
//        if (lastNameOrder == NSOrderedSame)
//        {
//            return [obj1.firstName compare:obj2.firstName];
//        }else {
//            return lastNameOrder;
//        }
//    }];
////    for (Person *person in people)
////    {
//        [people enumerateObjectsUsingBlock:^(Person *person, NSUInteger idx, BOOL *stop) {
//            NSLog(@"Person %d %@ %@",idx, person.firstName, person.lastName);
//        }];
//    
//    
//}

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    
    Person *person1 = [[Person alloc] init];
    person1.firstName = @"Dan";
    person1.lastName = @"Bostjancic";
    [dict setObject:person1 forKey:@"BO"];
    
    Person *person2 = [[Person alloc] init];
    person2.firstName = @"Ralph";
    person2.lastName = @"Wiggum";
    [dict setObject:person2 forKey:@"WI"];
    
    Person *person3 = [[Person alloc] init];
    person3.firstName = @"Jeebus";
    person3.lastName = @"Shaves";
    [dict setObject:person3 forKey:@"SH"];
    
    
    
    [dict enumerateKeysAndObjectsUsingBlock:^(NSString *key, Person *person, BOOL *stop) {
        NSLog(@" %@ %@ %@", key, person.firstName, person.lastName);
    
        
    }];
}
@end
