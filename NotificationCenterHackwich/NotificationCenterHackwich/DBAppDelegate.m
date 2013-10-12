//
//  DBAppDelegate.m
//  NotificationCenterHackwich
//
//  Created by Deb Bostjancic on 10/9/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBAppDelegate.h"

@implementation DBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    id url = @"http://google.com";
    url = [NSURL URLWithString:url];
    id request = [NSURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"Downloaded Google" object:data];
    }];
    return YES;
}
							

@end
