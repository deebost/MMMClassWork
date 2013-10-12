//
//  BoringViewController.h
//  DelegateTwo
//
//  Created by Cornelius Carroll on 9/23/13.
//  Copyright (c) 2013 Cornelius Carroll. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorDelegate.h"

@interface BoringViewController : UIViewController
@property (strong, nonatomic)id <ColorDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *myTextField;

@end
