//
//  DBViewController.m
//  Wikipedia3.4.1
//
//  Created by Deb Bostjancic on 10/3/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"
#import "DBSearchTitleViewController.h"

@interface DBViewController ()
@property (weak, nonatomic) IBOutlet UITextField *searchTextField;

@end

@implementation DBViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    DBSearchTitleViewController *stvc = segue.destinationViewController;
    stvc.searchWord = _searchTextField.text;
    
}

@end
