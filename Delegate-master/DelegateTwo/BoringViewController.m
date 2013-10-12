//
//  BoringViewController.m
//  DelegateTwo
//
//  Created by Cornelius Carroll on 9/23/13.
//  Copyright (c) 2013 Cornelius Carroll. All rights reserved.
//

#import "BoringViewController.h"


@interface BoringViewController ()
- (IBAction)green:(id)sender;
- (IBAction)red:(id)sender;
- (IBAction)orange:(id)sender;
- (IBAction)blue:(id)sender;



@end

@implementation BoringViewController
@synthesize delegate,myTextField;



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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)green:(id)sender {
    [delegate changeColor:[UIColor greenColor]];
    [delegate changeText:myTextField.text];
}

- (IBAction)red:(id)sender {
    [delegate changeColor:[UIColor redColor]];
    [delegate changeText:myTextField.text];
}

- (IBAction)orange:(id)sender {
    [delegate changeColor:[UIColor orangeColor]];
    [delegate changeText:myTextField.text];
}

- (IBAction)blue:(id)sender {
    [delegate changeColor:[UIColor purpleColor]];
    [delegate changeText:myTextField.text];
}
@end
