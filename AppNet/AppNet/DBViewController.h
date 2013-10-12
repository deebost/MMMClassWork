//
//  DBViewController.h
//  AppNet
//
//  Created by Deb Bostjancic on 10/4/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSMutableDictionary *appNetResults;
@property (strong, nonatomic) NSMutableArray *resultsOfArrays;
- (IBAction)reloadTableView:(id)sender;


@end
