//
//  DBViewController.m
//  NotificationCenterHackwich
//
//  Created by Deb Bostjancic on 10/9/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController () {
    id observer1, observer2;
}

@end

@implementation RootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    observer1 = [nc addObserverForName:UIApplicationWillEnterForegroundNotification object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *note) {
        [self incrementCount];
    }];
    observer2 = [nc addObserverForName:@"Downloaded Google" object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification *note) {
        self.numberLabel.text = [NSString stringWithFormat:@"%i bytes", [note.object length]];
    }];

}

-(void)incrementCount
{
    int count = self.numberLabel.text.integerValue;
    count++;
    self.numberLabel.text = [NSString stringWithFormat:@"%i", count];
    
}

-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:observer1];
    [[NSNotificationCenter defaultCenter] removeObserver:observer2];
}



- (IBAction)buttonPress:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"MyNotification" object:nil];
}
@end
