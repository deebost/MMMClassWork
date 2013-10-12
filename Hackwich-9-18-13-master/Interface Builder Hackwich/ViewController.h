//
//  ViewController.h
//  Interface Builder Hackwich
//
//  Created by Kaila Mackey on 9/18/13.
//  Copyright (c) 2013 Kaila Mackey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "secondViewController.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *TextField;
@property (weak, nonatomic) IBOutlet UIButton *Button;
- (IBAction)OnPress:(id)sender;
- (IBAction)OnButton2Press:(id)sender;
- (IBAction)secondViewController:(id)sender;

@end
