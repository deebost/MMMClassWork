//
//  DBAppDelegate.m
//  Todo List
//
//  Created by Deb Bostjancic on 9/24/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBAppDelegate.h"

@implementation DBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UIViewController *vc = self.window.rootViewController;
    self.navigationcontroller = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = self.navigationcontroller;
    
    return YES;
}


@end
