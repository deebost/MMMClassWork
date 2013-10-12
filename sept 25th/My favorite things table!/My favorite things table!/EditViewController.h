//
//  EditViewController.h
//  My favorite things table!
//
//  Created by Deb Bostjancic on 9/25/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol EditViewControllerDelegate
- (void)editViewController: (id)evc didEdit: (NSString *) text index: (int) index;


@end


@interface EditViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *secondViewTextField;
@property (weak, nonatomic) IBOutlet UIButton *commitChangeButton;
@property (strong, nonatomic) id <EditViewControllerDelegate> delegate;
@property (assign) int index;
@property (weak, nonatomic) NSString* passedText;

- (IBAction)commitChangeOnPress:(id)sender;
@end
