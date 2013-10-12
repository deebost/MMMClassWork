//
//  DBAppDelegate.m
//  Array
//
//  Created by Deb Bostjancic on 9/24/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBAppDelegate.h"

@implementation DBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    _navigationController = [[UINavigationController alloc] initWithRootViewController:_window.rootViewController];
    _window.rootViewController = _navigationController;
    return YES;
}

@end