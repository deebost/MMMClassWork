//
//  DBViewController.h
//  stop the stopwatch
//
//  Created by Deb Bostjancic on 9/21/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *stopWatchLabel;
- (IBAction)startOnPress:(id)sender;
- (IBAction)stopOnPress:(id)sender;
- (IBAction)pauseOnPress:(id)sender;
- (IBAction)resumeOnpress:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *startButton;

@property (weak, nonatomic) IBOutlet UIButton *stopButton;
@property (weak, nonatomic) IBOutlet UIButton *pauseButton;
@property (weak, nonatomic) IBOutlet UIButton *resumeButton;

@end
