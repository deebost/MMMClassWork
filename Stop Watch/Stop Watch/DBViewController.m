//
//  DBViewController.m
//  Stop Watch
//
//  Created by Deb Bostjancic on 9/19/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"

@interface DBViewController ()
{
    
    NSTimer * startStopWatch;
    UILabel* stopWatch;
    NSDate *startDate;
    BOOL running;
    
    

}
@property (strong, nonatomic) IBOutlet UILabel *stopWatchTimeInNumbers;
-(void)updateTimer;

@end

@implementation DBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    stopWatchTimeInNumbers.text = @"00.00.00";
    running = false;
    startDate = [NSDate date];
    


}

@synthesize startStopWatch,stopWatchTimeInNumbers;


int secondStopWatchTimeAccumulatted=0;
int minutesStopWatchTimeAccumulatted=0;
int hoursStopWatchTimeAccumulatted=0;


- (IBAction)startStopWatchButtonPress:(id)sender {
    if (!running)
        running = TRUE;
        [sender setTitle:@"Go Go GO" forState:UIControlStateNormal];
    if (stopWatch == nil) {
        startStopWatch = [NSTimer scheduledTimerWithTimeInterval:1.0/10.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    }
}

- (IBAction)pauseStopWatchButtonPress:(id)sender {

}
- (IBAction)stopStopWatchButtonPress:(id)sender {
    running = FALSE;
    [sender setTitle:@"Stop" forState:UIControlStateNormal];
    [stopWatch invalidateIntrinsicContentSize];
    stopWatch = nil;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)updateTimer{
    NSDate *startDate = [NSDate date];
    
         
}
@end
