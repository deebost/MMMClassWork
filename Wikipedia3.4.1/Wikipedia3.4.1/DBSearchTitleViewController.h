//
//  DBSearchTitleViewController.h
//  Wikipedia3.4.1
//
//  Created by Deb Bostjancic on 10/3/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DBSearchTitleViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) NSString *searchWord;
@property (strong, nonatomic) NSMutableDictionary *resultsOfSearch;
@property (strong, nonatomic) NSMutableArray *titlesToShow;
@end
