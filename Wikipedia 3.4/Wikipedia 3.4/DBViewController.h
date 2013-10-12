//
//  DBViewController.h
//  Wikipedia 3.4
//
//  Created by Deb Bostjancic on 10/3/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) NSMutableDictionary * searchResults;

@property (strong, nonatomic) NSMutableArray* titleForTheTable;
@end
