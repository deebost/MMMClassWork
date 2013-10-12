//
//  SecondViewController.m
//  Array
//
//  Created by Deb Bostjancic on 9/25/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "SecondViewController.h"
#import "DBViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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
    _secondTextField.text = _passedText;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)endEditingWithButtonPress:(id)sender {
    [_delegate secondViewController:self didEdit:_secondTextField.text index:_index];
}
@end
