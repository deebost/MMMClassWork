//
//  ViewController.h
//  2+2
//
//  Created by Sviatoslav Lytovka on 9/18/13.
//  Copyright (c) 2013 Lytovka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *field1;
@property (weak, nonatomic) IBOutlet UITextField *field2;
- (IBAction)addNumbers:(id)sender;
- (IBAction)subtractNumbers:(id)sender;
- (IBAction)multiplyNumber:(id)sender;
- (IBAction)divideNumber:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *result;

@end
