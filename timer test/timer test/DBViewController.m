//
//  DBViewController.m
//  timer test
//
//  Created by Deb Bostjancic on 9/21/13.
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
    double pausetimeInterval = 0.0;
}

    
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
bool running;
-(void) updateTimer {
    
    NSDate *currentDate = [NSDate date];
    
    NSTimeInterval timeInterval = [currentDate timeIntervalSinceDate:startDate];
    NSDate *timerDate = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"mm:ss.S"];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0.0]];
    
    NSString *timeString = [dateFormatter stringFromDate:timerDate];
    _stopWatchLabel.text = timeString;
    pauseTimeInterval = &timeInterval;
}
    - (IBAction)startStopWatch:(id)sender
    {
    if(running == NO) {
        running = YES;
        
        startDate = [NSDate date] ;
        startDate = [[startDate dateByAddingTimeInterval:((-1)*(pausetimeInterval))]
        stopWatchTimer = [NSTimer scheduledTimerWithTimeInterval:1.0/10.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    }
    else {
        running = NO;
        [stopWatchTimer invalidate];
        stopWatchTimer = nil;
        [self updateTimer];
    }
}

- (IBAction)pauseStopWatch:(id)sender {
}
- (IBAction)stopStopWatch:(id)sender {
}

@end
