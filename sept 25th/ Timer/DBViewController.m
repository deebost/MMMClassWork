//
//  DBViewController.m
//   Timer
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
	_startButton.hidden = YES;
    _userTimeInSeconds.hidden = YES;
    _setTimeButton.hidden = YES;
    _stopButton.hidden = YES;
    _pauseButton.hidden = YES;
    _countDownStartButton.hidden = YES;
    _countDownStopButton.hidden = YES;
    _countDownPauseButton.hidden= YES;
    _stopWatch.hidden = NO;
    _eggTimer.hidden = NO;
    _stopWatchLabel.hidden = YES;
    _countDownLabel.hidden = YES;
    [_countDownLabel setFont:[UIFont fontWithName:@"Peach Milk" size:55]];
        [_stopWatchLabel setFont:[UIFont fontWithName:@"Peach Milk" size:60]];
    [_countDownLabel setFont:[UIFont fontWithName:@"Peach Milk" size:55]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)setTimeOnPress:(id)sender {
    _countDownLabel.text = _userTimeInSeconds.text ;
    [self.userTimeInSeconds resignFirstResponder];
    _countDownPauseButton.hidden = NO;
    _countDownStartButton.hidden = NO;
    _countDownStopButton.hidden = NO;
    _setTimeButton.hidden = YES;
    _userTimeInSeconds.hidden = YES;
    
    
}

-(void)stopWatchActivity{
    int currentTime = [_stopWatchLabel.text intValue];
    int newTime = currentTime + 1;
    //int secondsLeft = newTime;
    //int hours = secondsLeft / 3600;
    //int minutes = (secondsLeft % 3600) / 60;
    //int seconds = (secondsLeft % 3600) % 60;
  
    _stopWatchLabel.text = [NSString stringWithFormat:@"%2d", newTime];
    
}
-(void)countDownActivity{
    int countTime = [_countDownLabel.text intValue];
    int newCountTime = countTime - 1;
    _countDownLabel.text = [NSString stringWithFormat:@"%d", newCountTime];
    
    
    
    }

    

- (IBAction)startStopWatchOnPress:(id)sender {
    myStopWatch = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(stopWatchActivity) userInfo:nil repeats:YES];
    _startButton.hidden = YES;
    _pauseButton.hidden = NO;

}

- (IBAction)pauseStopWatchOnPress:(id)sender {
    [myStopWatch invalidate];
    _pauseButton.hidden = YES;
    _startButton.hidden = NO;
}

- (IBAction)stopStopWatchOnPress:(id)sender {
    [myStopWatch invalidate];
    _stopWatchLabel.text = @"0";
    _stopWatch.hidden = NO;
    _eggTimer.hidden = NO;
    _pauseButton.hidden = YES;
    _startButton.hidden = YES;
    _stopButton.hidden = YES;
    _stopWatchLabel.hidden = YES;
    _imageBackRound.hidden = NO;
    
}

- (IBAction)startCountDownOnPress:(id)sender {
    myCountDown = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countDownActivity) userInfo:nil repeats:YES];
    _countDownStartButton.hidden = YES;
    _countDownPauseButton.hidden = NO;
}

- (IBAction)pauseCountDownOnPress:(id)sender {
    _countDownPauseButton.hidden = YES;
    _countDownStartButton.hidden = NO;
    [myCountDown invalidate];
}

- (IBAction)stopCountDownOnPress:(id)sender {
    [myCountDown invalidate];
    _countDownLabel.text = @"0";
    _stopWatch.hidden = NO;
    _eggTimer.hidden = NO;
    _setTimeButton.hidden = YES;
    _userTimeInSeconds.hidden = YES;
    _countDownPauseButton.hidden = YES;
    _countDownStartButton.hidden = YES;
    _countDownStopButton.hidden = YES;
    _countDownLabel.hidden = YES;
    _imageBackRound.hidden = NO;
}

- (IBAction)stopWatchButtonOnPress:(id)sender {
    _stopWatchLabel.hidden = NO;
    _stopButton.hidden = NO;
    _pauseButton.hidden = NO;
    _startButton.hidden = NO;
    _countDownLabel.hidden = YES;
    _countDownPauseButton.hidden = YES;
    _countDownStartButton.hidden = YES;
    _countDownStopButton.hidden = YES;
    _countDownLabel.hidden = YES;
    _eggTimer.hidden = YES;
    _stopWatch.hidden = YES;
    _imageBackRound.hidden = YES;
    _userTimeInSeconds.hidden = YES;
    _setTimeButton.hidden = YES;
}

- (IBAction)eggTimerButtonOnpress:(id)sender {
    _stopWatchLabel.hidden = YES;
    _stopButton.hidden = YES;
    _pauseButton.hidden = YES;
    _startButton.hidden = YES;
    _countDownLabel.hidden = NO;
    _countDownPauseButton.hidden = YES;
    _countDownStartButton.hidden = YES;
    _countDownStopButton.hidden = YES;
    _countDownLabel.hidden = NO;
    _eggTimer.hidden = YES;
    _stopWatch.hidden = YES;
    _imageBackRound.hidden = YES;
    _setTimeButton.hidden = NO;
    _userTimeInSeconds.hidden = NO;

    
}
@end
