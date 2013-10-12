//
//  SplitViewController.h
//  MoreBlocks
//
//  Created by Jhaybie on 10/1/13.
//  Copyright (c) 2013 Jhaybie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SplitViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSMutableArray *splitArray;

@end
