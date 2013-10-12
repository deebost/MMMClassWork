//
//  DBAppDelegate.m
//  My favorite things table!
//
//  Created by Deb Bostjancic on 9/24/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBAppDelegate.h"

@implementation DBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    _navigationController = [[UINavigationController alloc] initWithRootViewController:_window.rootViewController];
    _window.rootViewController = _navigationController;
    return YES;
}
@end
