//
//  WordVC.h
//  WordBrowser
//
//  Created by Jhaybie on 10/2/13.
//  Copyright (c) 2013 Jhaybie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WordClass.h"
#import "RootVC.h"

@interface WordVC : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) WordClass *selectedWord;

@end
