//
//  DBViewController.m
//  Catergories
//
//  Created by Deb Bostjancic on 10/9/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"
#import "NSString+Reverse.h"

@interface DBViewController ()

@end

@implementation DBViewController

- (IBAction)dareButtonOnPress:(id)sender {
    NSString *text = _topTextField.text;

    self.topLabel.text = text.reversedString;
}
@end
