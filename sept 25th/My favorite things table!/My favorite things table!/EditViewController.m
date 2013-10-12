//
//  EditViewController.m
//  My favorite things table!
//
//  Created by Deb Bostjancic on 9/25/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "EditViewController.h"
#import "DBViewController.h"

@interface EditViewController ()

@end

@implementation EditViewController

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
    _secondViewTextField.text = _passedText;
    
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)commitChangeOnPress:(id)sender {
    [_delegate editViewController:self didEdit:_secondViewTextField.text index:_index];
}
@end
