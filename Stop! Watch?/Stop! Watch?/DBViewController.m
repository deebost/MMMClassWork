//
//  DBViewController.m
//  Stop! Watch?
//
//  Created by Deb Bostjancic on 9/21/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"

@interface DBViewController ()

@end

@implementation DBViewController
int hours;
int minutes;
int seconds;
int secondsLeft;


- (void)viewDidLoad
{
    
    [super viewDidLoad];
    secondsLeft = 0;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)updateTime{
    [updateStopWatch invalidate];
    updateStopWatch = nil;
    currentTimeOnStopWatch = [NSDate date];
    NSDateFormatter *timeFormat= [[NSDateFormatter alloc] init];
    [timeFormat setTimeStyle:NSDateFormatterMediumStyle];
    _currentTime.text = [timeFormat stringFromDate:currentTimeOnStopWatch];
    updateStopWatch = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
}



-(void)stopWatchRun:(NSTimer *) theTimer{
    if (secondsLeft > 0)
    {
        secondsLeft--;
        hours = secondsLeft / 3600;
        minutes = (secondsLeft %3600) / 60;
        seconds = (secondsLeft %3600) %60;
        NSString *timeOutput = [NSString stringWithFormat:@"%02d:%02d.%02d",hours, minutes, seconds];
        _stopWatchLabel.text = timeOutput;
    }
    else
    {
        [timer invalidate];
        _stopWatchLabel.text = @"00.00.00";
        secondsLeft = 0;
    }

    - (IBAction)stopWatchStartOnButtonPress:(id)sender

- (IBAction)stopWatchStopsOnButtonPress:(id)sender {
    [timer invalidate];
    totalSeconds = 0;
    _stopWatchLabel.text = [NSString stringWithFormat:@"00.00.00"];
    _stopWatchStartButton.hidden = NO;
    
}
}
@end
