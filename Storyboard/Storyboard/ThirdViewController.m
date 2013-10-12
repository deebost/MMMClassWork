//
//  ThirdViewController.m
//  Storyboard
//
//  Created by Deb Bostjancic on 9/30/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()
{
    __weak IBOutlet UILabel *myLable;
    
}




@end

@implementation ThirdViewController
@synthesize myLableName;
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
    myLable.text = myLableName;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setMyLableName:(NSString *)_myLableName
{
    myLableName = _myLableName;
    myLable.text = myLableName;
}
@end
