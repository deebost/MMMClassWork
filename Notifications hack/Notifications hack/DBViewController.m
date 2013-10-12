//
//  DBViewController.m
//  Notifications hack
//
//  Created by Deb Bostjancic on 10/9/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"

@interface DBViewController ()

@end

@implementation DBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
}

- (IBAction)goOnPress:(id)sender
{
    [self resignFirstResponder];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"newColor" object:_topTextField.text];
}
@end
