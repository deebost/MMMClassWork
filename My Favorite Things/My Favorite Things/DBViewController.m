//
//  DBViewController.m
//  My Favorite Things
//
//  Created by Deb Bostjancic on 9/24/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"

@interface DBViewController ()

@end

@implementation DBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)addTextOnPress:(id)sender {
    [_topTextField resignFirstResponder];
    _bodyTextView.text = [_bodyTextView.text stringByAppendingString:@"\n"];
    _bodyTextView.text = [_bodyTextView.text stringByAppendingString:_topTextField.text];
}

- (IBAction)removeTextOnPress:(id)sender {
    _bodyTextView.text = [_bodyTextView.text 
    

}
@end
