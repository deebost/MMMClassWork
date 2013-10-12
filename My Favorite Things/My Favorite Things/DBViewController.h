//
//  DBViewController.h
//  My Favorite Things
//
//  Created by Deb Bostjancic on 9/24/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBViewController : UIViewController <UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *topTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;
@property (weak, nonatomic)NSString* originalText;
- (IBAction)addTextOnPress:(id)sender;
- (IBAction)removeTextOnPress:(id)sender;

@end
