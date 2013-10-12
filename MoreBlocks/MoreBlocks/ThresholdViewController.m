//
//  ThresholdViewController.m
//  MoreBlocks
//
//  Created by Jhaybie on 10/1/13.
//  Copyright (c) 2013 Jhaybie. All rights reserved.
//

#import "ThresholdViewController.h"

@interface ThresholdViewController ()
@property (weak, nonatomic) IBOutlet UITextField *thresholdTextField;

@end

@implementation ThresholdViewController
@synthesize threshold, thresholdTextField;


- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (void)prepareForSegue: (UIStoryboardSegue *)segue sender: (id)sender
{
    ViewController *view = segue.destinationViewController;
    //view.navigationItem.hidesBackButton = YES;
    view.threshold = thresholdTextField.text;
}



@end
