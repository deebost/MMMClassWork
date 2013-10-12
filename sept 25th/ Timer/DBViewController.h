//
//  DBViewController.h
//   Timer
//
//  Created by Deb Bostjancic on 9/22/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBViewController : UIViewController {
    NSTimer *myStopWatch;
    NSTimer *myCountDown;
}


@property (weak, nonatomic) IBOutlet UILabel *stopWatchLabel;
@property (weak, nonatomic) IBOutlet UILabel *countDownLabel;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UIButton *countDownStartButton;
@property (weak, nonatomic) IBOutlet UIButton *pauseButton;
@property (weak, nonatomic) IBOutlet UIButton *stopButton;
@property (weak, nonatomic) IBOutlet UIButton *countDownPauseButton;
@property (weak, nonatomic) IBOutlet UIButton *countDownStopButton;
@property (weak, nonatomic) IBOutlet UIButton *stopWatch;
@property (weak, nonatomic) IBOutlet UIButton *eggTimer;
@property (weak, nonatomic) IBOutlet UIImageView *imageBackRound;
- (IBAction)setTimeOnPress:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *setTimeButton;
@property (weak, nonatomic) IBOutlet UITextField *userTimeInSeconds;

-(void)stopWatchActivity;
-(void)countDownActivity;
- (IBAction)startStopWatchOnPress:(id)sender;

- (IBAction)pauseStopWatchOnPress:(id)sender;
- (IBAction)stopStopWatchOnPress:(id)sender;
- (IBAction)startCountDownOnPress:(id)sender;
- (IBAction)pauseCountDownOnPress:(id)sender;

- (IBAction)stopCountDownOnPress:(id)sender;
- (IBAction)stopWatchButtonOnPress:(id)sender;
- (IBAction)eggTimerButtonOnpress:(id)sender;




@end
