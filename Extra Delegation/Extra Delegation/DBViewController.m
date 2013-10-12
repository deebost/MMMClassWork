//
//  DBViewController.m
//  Extra Delegation
//
//  Created by Deb Bostjancic on 9/23/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"
#import "DBsecondView.h"
@interface DBViewController ()
@property (weak, nonatomic) IBOutlet DBsecondView *topViewBox;
@property (weak, nonatomic) IBOutlet DBsecondView *bottomViewBox;


@end

@implementation DBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
