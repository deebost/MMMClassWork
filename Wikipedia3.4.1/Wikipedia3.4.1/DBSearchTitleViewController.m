//
//  DBSearchTitleViewController.m
//  Wikipedia3.4.1
//
//  Created by Deb Bostjancic on 10/3/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBSearchTitleViewController.h"

@interface DBSearchTitleViewController ()
@property (weak, nonatomic) IBOutlet UITableView *resultTableView;

@end

@implementation DBSearchTitleViewController


- (void)viewDidLoad
{
    _titlesToShow = [[NSMutableArray alloc] init];
    
    NSString *firstPartUrl = @"https://en.wikipedia.org/w/api.php?%20action=query&list=search&srsearch=";
    NSString *searchPartUrl = [NSString stringWithFormat:@"%@", _searchWord ];
    NSString *lastPartUrl = @"&srprop=snippet&format=json";
    
    NSString *entireUrl = [NSString stringWithFormat:@"%@%@%@", firstPartUrl, searchPartUrl, lastPartUrl];
    NSLog(@"%@", entireUrl);
    
    NSURL *url = [NSURL URLWithString: entireUrl];
    NSURLRequest *request = [NSURLRequest requestWithURL: url];
    [NSURLConnection sendAsynchronousRequest:request
                                       queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        _resultsOfSearch = [NSJSONSerialization JSONObjectWithData:data options:0 error:&connectionError];
       
        NSMutableDictionary *querysDictionary = [_resultsOfSearch objectForKey:@"query"];
        NSMutableArray *searchArray = [querysDictionary objectForKey:@"search"];
        
        for (NSDictionary *dic in searchArray)
        {
            
            NSEnumerator *enumerator = [dic keyEnumerator];
            id key;
            
            while ((key = [enumerator nextObject]))
            {
                NSLog(@" key is %@", key);
                NSLog(@"object = %@", [dic objectForKey:key]);
                if ([key isEqual: @"title"])
                {
                    NSString *title = [dic objectForKey:key];
                    [_titlesToShow addObject:title];
                }
            }
            NSLog(@"titles = %@", _titlesToShow);
//            [_resultTableView reloadData];
        }
        [_resultTableView reloadData];
    }];
    [super viewDidLoad];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_titlesToShow count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"zzz"];
    cell.textLabel.text = [_titlesToShow objectAtIndex:indexPath.row];
    return  cell;
}

@end
