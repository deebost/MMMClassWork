//
//  DBViewController.h
//  Web View
//
//  Created by Deb Bostjancic on 9/23/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBViewController : UIViewController <UIWebViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end
