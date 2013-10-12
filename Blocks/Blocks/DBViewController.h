//
//  DBViewController.h
//  Blocks
//
//  Created by Deb Bostjancic on 10/1/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *firstNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondNumberTextField;
@property (weak, nonatomic) IBOutlet UILabel *reultLabel;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
- (IBAction)addNumbersOnPress:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *minusButton;

@end
