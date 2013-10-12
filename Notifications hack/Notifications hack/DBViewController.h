//
//  DBViewController.h
//  Notifications hack
//
//  Created by Deb Bostjancic on 10/9/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColorView.h"
#import "UIColorView+ChangeColor.h"

@interface DBViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *topTextField;
- (IBAction)goOnPress:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *colorBox1;
@property (weak, nonatomic) IBOutlet UIView *colorBox2;
@property (weak, nonatomic) IBOutlet UIView *colorBox3;
@property (weak, nonatomic) IBOutlet UIView *colorBox4;
@property (weak, nonatomic) IBOutlet UIView *colorBox5;

@end
