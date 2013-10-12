//
//  DBViewController.m
//  My Stop Watch App
//
//  Created by Deb Bostjancic on 9/21/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"

@interface DBViewController ()
{
    __weak IBOutlet UILabel *stopWatchLabel;
    __weak IBOutlet UIButton *startButton;
    __weak IBOutlet UIButton *pauseButton;
    __weak IBOutlet UIButton *stopButton;
    
    NSTimer *timer;
    
}

@end

@implementation DBViewController
int hours;
int seconds;
int minutes;
int secondsLeft;

- (void)viewDidLoad
{
    [super viewDidLoad];
    secondsLeft = 0;
	
    
}

- (void) counterUpdate{
    if (secondsLeft > 0) {
        secondsLeft--;
        hours = secondsLeft / 3600;
        minutes = (secondsLeft % 3600) / 60;
        seconds = (secondsLeft %3600) % 60;
        stopWatchLabel.text = [NSString stringWithFormat:@"%0d:%0d:%0d", hours, minutes, seconds];
        
    }
    else {
        [timer invalidate];
        stopWatchLabel.text=@"XX:XX:XX";
        secondsLeft = 0;
    }
}
- (IBAction)startButtonPressed:(id)sender {
    if (secondsLeft > 0)
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(counterUpdate:) userInfo:nil repeats:YES];
    secondsLeft = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
