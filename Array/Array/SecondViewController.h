//
//  SecondViewController.h
//  Array
//
//  Created by Deb Bostjancic on 9/25/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondViewControllerDelegate <NSObject>

-(void)secondViewController: (id)svc didEdit: (NSString *)text index: (int) index;

@end

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *secondTextField;
@property (weak, nonatomic) IBOutlet UIButton *closeButton;
- (IBAction)endEditingWithButtonPress:(id)sender;
@property (weak, nonatomic) id <SecondViewControllerDelegate> delegate;
@property (assign) int index;
@property (weak, nonatomic) NSString* passedText;
@end
