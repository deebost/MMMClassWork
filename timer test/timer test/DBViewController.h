//
//  DBViewController.h
//  timer test
//
//  Created by Deb Bostjancic on 9/21/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>

NSDate* startDate;
NSTimeInterval* timeInterval;
NSTimeInterval* pauseTimeInterval;
NSTimer* stopWatchTimer;



@interface DBViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UIButton *pauseButton;
@property (weak, nonatomic) IBOutlet UIButton *stopButton;
@property (weak, nonatomic) IBOutlet UILabel *stopWatchLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeInterval;

@end
