//
//  DBViewController.h
//  Catergories
//
//  Created by Deb Bostjancic on 10/9/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *topLabel;
- (IBAction)dareButtonOnPress:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *topTextField;

@end
