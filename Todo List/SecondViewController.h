//
//  SecondViewController.h
//  Todo List
//
//  Created by Deb Bostjancic on 9/24/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChangeValueDelegate.h"

@interface SecondViewController : UIViewController

- (IBAction)addItemToTableList:(id)sender;
- (IBAction)removeItemToTableList:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textFieldTwo;
@property (strong, nonatomic) id <ChangeValueDelegate> delegate;


@end
