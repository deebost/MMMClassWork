//
//  DBViewController.m
//  Dan Timer
//
//  Created by Deb Bostjancic on 9/22/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"

@interface DBViewController ()

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

- (IBAction)startButtonOnPress:(id)sender {
    myTicker = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(showActivity) userInfo:nil repeats:YES];
    _startButton.hidden=YES;
}

- (IBAction)pauseOnpress:(id)sender {
    [myTicker invalidate];
    _startButton.hidden = NO;
}

- (IBAction)resetOnPress:(id)sender {
    _timerLabel.text = @"0";
    
}
-(void) showActivity{
    int currentTime = [_timerLabel.text intValue];
    int newTime = currentTime + 1;
    _timerLabel.text = [NSString stringWithFormat:@"%d", newTime];
    
}

@end
