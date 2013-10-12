//
//  DBViewController.m
//  AppNet
//
//  Created by Deb Bostjancic on 10/4/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"

@interface DBViewController ()
@property (weak, nonatomic) IBOutlet UITableView *appNetTableView;

@end

@implementation DBViewController

- (void)viewDidLoad
{
    _resultsOfArrays = [[NSMutableArray alloc] init];

    
    NSURL *url = [NSURL URLWithString:@"https://alpha-api.app.net/stream/0/posts/stream/global"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue]
                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError)
     {
         _appNetResults = [NSJSONSerialization JSONObjectWithData:data options:0 error:&connectionError];
         
         _resultsOfArrays = _appNetResults[@"data"];
         
         [_appNetTableView reloadData];
     }];
    
    [super viewDidLoad];
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_appNetResults count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *arrayDictionary = (NSDictionary *)[_resultsOfArrays objectAtIndex:indexPath.row];
    NSDictionary *userDictionary = [arrayDictionary objectForKey:@"user"];
    NSString *userName = [userDictionary objectForKey:@"username"];
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"zzz"];
    cell.textLabel.font = [UIFont systemFontOfSize:10];
    cell.detailTextLabel.font = [UIFont italicSystemFontOfSize:7];
    cell.backgroundColor = [UIColor blueColor];
    cell.textLabel.textColor = [UIColor purpleColor];
    cell.detailTextLabel.textColor = [UIColor whiteColor];

    
    [UITableView animateWithDuration:2.1f animations:^{
        cell.detailTextLabel.transform = CGAffineTransformMakeTranslation(300, 0);
        cell.detailTextLabel.transform = CGAffineTransformMakeTranslation(10, 0);
        cell.textLabel.transform = CGAffineTransformMakeRotation(300);
        cell.textLabel.transform = CGAffineTransformMakeRotation(0);
        cell.textLabel.textColor = [UIColor blueColor];
        cell.detailTextLabel.textColor = [UIColor orangeColor];


        cell.backgroundColor = [UIColor cyanColor];
    }];
    
    cell.textLabel.text = [(NSDictionary *) [_resultsOfArrays objectAtIndex:indexPath.row] objectForKey:@"text"];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"User:%@", userName];
    
    return cell;
}
- (IBAction)reloadTableView:(id)sender {
    NSURL *url = [NSURL URLWithString:@"https://alpha-api.app.net/stream/0/posts/stream/global"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue]
                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError)
     {
         _appNetResults = [NSJSONSerialization JSONObjectWithData:data options:0 error:&connectionError];
         
         _resultsOfArrays = _appNetResults[@"data"];
         
         
         [_appNetTableView reloadData];
     }];

}
@end
