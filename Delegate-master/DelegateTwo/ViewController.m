//
//  ViewController.m
//  DelegateTwo
//
//  Created by Cornelius Carroll on 9/23/13.
//  Copyright (c) 2013 Cornelius Carroll. All rights reserved.
//

#import "ViewController.h"
#import "BoringViewController.h"

@interface ViewController ()
{
    BoringViewController * boringViewController;
    int holder;
}

@end

@implementation ViewController
@synthesize myLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	boringViewController = [[BoringViewController alloc] initWithNibName:nil bundle:nil];
    boringViewController.delegate = self;
    [self.view addSubview:boringViewController.view];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark ColorDelegate

-(void)changeColor:(UIColor *)color
{
    self.view.backgroundColor = color;
}

-(void)changeText:(NSString *)text{
    myLabel.text = text;
}
@end
