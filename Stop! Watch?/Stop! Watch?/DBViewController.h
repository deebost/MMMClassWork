//
//  DBViewController.h
//  Stop! Watch?
//
//  Created by Deb Bostjancic on 9/21/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>
NSDate *currentTimeOnStopWatch;
NSTimer *updateStopWatch;
NSTimer *timer;

@interface DBViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *stopWatchLabel;
@property (weak, nonatomic) IBOutlet UIButton *stopWatchStartButton;
@property (weak, nonatomic) IBOutlet UIButton *stopWatchPauseButton;
@property (weak, nonatomic) IBOutlet UIButton *stopWatchStopButton;
@property (weak, nonatomic) IBOutlet UILabel *currentTime;

@end
