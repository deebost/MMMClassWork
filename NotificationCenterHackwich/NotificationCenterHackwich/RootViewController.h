//
//  DBViewController.h
//  NotificationCenterHackwich
//
//  Created by Deb Bostjancic on 10/9/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *numberLabel;
@property (weak, nonatomic) IBOutlet UIButton *myButton;
- (IBAction)buttonPress:(id)sender;

@end
