//
//  DBViewController.h
//  Todo List
//
//  Created by Deb Bostjancic on 9/24/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChangeValueDelegate.h"

@interface DBViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, ChangeValueDelegate>
@property (weak, nonatomic) IBOutlet UITableView *bottomTableList;
@property (weak, nonatomic) IBOutlet UITextField *thingsToAddToList;
@property (strong, nonatomic) NSMutableArray* array;
@property (strong, nonatomic) NSString *updated;

- (IBAction)addTextToToDoList:(id)sender;

@end
