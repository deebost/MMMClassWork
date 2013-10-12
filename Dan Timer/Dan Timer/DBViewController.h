//
//  DBViewController.h
//  Dan Timer
//
//  Created by Deb Bostjancic on 9/22/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBViewController : UIViewController{
    NSTimer *myTicker;
    NSTimer *myCountDownTicker;
}
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;

@property (weak, nonatomic) IBOutlet UIButton *startButton;

- (IBAction)startButtonOnPress:(id)sender;
- (IBAction)pauseOnpress:(id)sender;

- (IBAction)resetOnPress:(id)sender;

-(void) showActivity;
-(void) countDownShowActivity;


@property (weak, nonatomic) IBOutlet UILabel *countDownLabel;
- (IBAction)countDownStartOnPress:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *countDownStartButton;

- (IBAction)countDownPauseOnPress:(id)sender;

- (IBAction)resetCountDownOnPress:(id)sender;


@end
