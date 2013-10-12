//
//  DBViewController.h
//  Array
//
//  Created by Deb Bostjancic on 9/24/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"


@interface DBViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, SecondViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UITableView *myTabelView;

@property (weak, nonatomic) IBOutlet UITextField *myTextField;
- (IBAction)buttonPress:(id)sender;
@property (strong, nonatomic) NSMutableArray* array;

@end
