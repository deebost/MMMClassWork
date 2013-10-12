//
//  DBViewController.m
//  Stop Watch √
//
//  Created by Deb Bostjancic on 9/20/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"

@interface DBViewController ()

@end

@implementation DBViewController




- (void)viewDidLoad
{
    [super viewDidLoad];
    
    stopWatchLabel.text = @"Press Start";
    running = FALSE;
    startDate = [NSDate date];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startButton:(id)sender {
    if (!running){
        running = TRUE;
        [sender setTitle:@"Go Go" forState:UIControlStateNormal];
        if (stopWatchTimer == nil) {
            stopWatchTimer = [NSTimer scheduledTimerWithTimeInterval:1.0/10.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
        }
        
    }else{
        running = FALSE;
        [sender setTitle:@"Start" forState:UIControlStateNormal];
        [stopWatchTimer invalidate];
        stopWatchTimer = nil;
    }
}

- (IBAction)stopAndResetButton:(id)sender {
    if (running){
        running = FALSE;
        [stopWatchTimer invalidate];
    }
    
    
        
    }

@end
