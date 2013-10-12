//
//  DBViewController.m
//  stop the stopwatch
//
//  Created by Deb Bostjancic on 9/21/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"

@interface DBViewController ()

@property (strong, nonatomic) NSTimer *stopWatchTimer;
@property (strong, nonatomic) NSDate *startDate;


@end

@implementation DBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

	// Do any additional setup after loading the view, typically from a nib.
}
NSDate *pauseStart;
NSDate *previousFireDate;
- (void)updateTimer
{
    NSDate *currentDate = [NSDate date];
    NSTimeInterval timeInterval = [currentDate timeIntervalSinceDate:self.startDate];
    NSDate *timerDate = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"HH:mm:ss.SSS"];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0.0]];
    
    NSString *timeString = [dateFormatter stringFromDate:timerDate];
    self.stopWatchLabel.text = timeString;
    self.stopWatchLabel.font = [UIFont fontWithName:@"peach_milk2" size:50];
    
    
}
-(void) pauseTimer:(NSTimer *) timer{
    [timer invalidate];
    pauseStart = [NSDate dateWithTimeIntervalSinceNow:0];
                  previousFireDate = [timer fireDate];
    [timer setFireDate:[NSDate distantFuture]];
}
-(void)resumeTimer:(NSTimer *) timer {
    float pauseTimer = -1*[pauseStart timeIntervalSinceNow];
    [timer setFireDate:[previousFireDate initWithTimeInterval:pauseTimer sinceDate:previousFireDate]];
}
                        
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startOnPress:(id)sender {
    self.startDate = [NSDate date];
    self.stopWatchTimer = [NSTimer scheduledTimerWithTimeInterval:1.0/10.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    _startButton.hidden = YES;
    _stopButton.hidden = NO;
    _pauseButton.hidden = NO;
    _resumeButton.hidden = YES;
    
    
}

- (IBAction)stopOnPress:(id)sender {
    [self.stopWatchTimer invalidate];
    self.stopWatchTimer = nil;
    [self updateTimer];
    _startButton.hidden = NO;
    _stopButton.hidden = YES;
    _pauseButton.hidden = YES;
    _resumeButton.hidden = YES;
}

- (IBAction)pauseOnPress:(id)sender {
    [self.stopWatchTimer invalidate];
    self.stopWatchTimer = [NSTimer scheduledTimerWithTimeInterval:0 target:self selector:@selector(pauseTimer:) userInfo:nil repeats:NO];
    _startButton.hidden = YES;
    _stopButton.hidden = YES;
    _pauseButton.hidden = YES;
    _resumeButton.hidden = NO;

    
    
}

- (IBAction)resumeOnpress:(id)sender {
    
    self.stopWatchTimer = [NSTimer scheduledTimerWithTimeInterval:1.0/10 target:self selector:@selector(resumeTimer:) userInfo:nil repeats:YES];
    [self updateTimer];
    _startButton.hidden = YES;
    _stopButton.hidden = NO;
    _pauseButton.hidden = NO;
    _resumeButton.hidden = YES;

}
@end
