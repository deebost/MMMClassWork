//
//  ViewController.m
//  Interface Builder Hackwich
//
//  Created by Kaila Mackey on 9/18/13.
//  Copyright (c) 2013 Kaila Mackey. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _label.text = @"Mobile Makers Rule!";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)OnPress:(id)sender {
    _label.text = @"Mobile Makers seriously rule!";
}

- (IBAction)OnButton2Press:(id)sender {
    _label.text = _TextField.text;
}

- (IBAction)secondViewController:(id)sender {
    secondViewController * SecondViewController = [[secondViewController alloc]init];
    [self presentViewController: SecondViewController animated:YES completion:Nil];
}
@end
