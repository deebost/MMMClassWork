//
//  DBViewController.h
//  Stop Watch √
//
//  Created by Deb Bostjancic on 9/20/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>
UILabel *stopWatchLabel;
NSTimer *stopWatchTimer;
NSDate *startDate;
BOOL running;

@interface DBViewController : UIViewController



@property (weak, nonatomic) IBOutlet UILabel *stopWatchFaceofWatch;
- (IBAction)startButton:(id)sender;
- (IBAction)stopAndResetButton:(id)sender;

-(void)updateTimer;

@end
