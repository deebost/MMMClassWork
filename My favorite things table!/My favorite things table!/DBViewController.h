//
//  DBViewController.h
//  My favorite things table!
//
//  Created by Deb Bostjancic on 9/24/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *bodyTableView;
@property (weak, nonatomic) IBOutlet UITextField *topTextField;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (strong, nonatomic) NSMutableArray* mutableArray;
@property(nonatomic, readonly, retain) UILabel *detailTextLabel;
- (IBAction)addTextOnPress:(id)sender;
- (IBAction)removeTextOnPress:(id)sender;

@end
