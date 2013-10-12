//
//  ViewController.h
//  MoreBlocks
//
//  Created by Jhaybie on 10/1/13.
//  Copyright (c) 2013 Jhaybie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SplitViewController.h"
#import "ThresholdViewController.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) NSString *threshold;
@end
