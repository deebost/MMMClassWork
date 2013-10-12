//
//  DBViewController.m
//  Memory
//
//  Created by Deb Bostjancic on 9/26/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"
#import "MMObject.h"

@interface DBViewController ()
{
    NSMutableArray* myArray;
    MMObject* myObject;
}

@end

@implementation DBViewController

- (void)viewDidLoad
{
    myObject = [[MMObject alloc] init];
    myArray = [NSMutableArray arrayWithCapacity:10];
    [super viewDidLoad];
	NSLog(@"retain count = %i (%@)", [myObject retainCount], myObject);
    [myArray addObject:myObject];
    NSLog(@"retain count = %i (%@)", [myObject retainCount], myObject);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)myButton:(id)sender {
    NSLog(@"retain count = %i (%@)", [myObject retainCount], myObject);
}
@end
