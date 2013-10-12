//
//  SecondViewController.m
//  Todo List
//
//  Created by Deb Bostjancic on 9/24/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "SecondViewController.h"
#import "DBViewController.h"


@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize textFieldTwo, delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addItemToTableList:(id)sender {
    [delegate newValue:textFieldTwo.text];
    [self dismissViewControllerAnimated:YES completion:Nil];
    textFieldTwo.text = @"";

}

- (IBAction)removeItemToTableList:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    textFieldTwo.text = @"";
}
@end
