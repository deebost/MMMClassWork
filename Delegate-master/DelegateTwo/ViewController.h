//
//  ViewController.h
//  DelegateTwo
//
//  Created by Cornelius Carroll on 9/23/13.
//  Copyright (c) 2013 Cornelius Carroll. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorDelegate.h"

@interface ViewController : UIViewController <ColorDelegate>
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end
