//
//  DBViewController.m
//  text
//
//  Created by Deb Bostjancic on 10/6/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"

@interface DBViewController ()

@end

@implementation DBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

NSURL *url = [NSURL URLWithString: @"https://alpha-api.app.net/stream/0/posts/stream/global"];

NSURLRequest *request = [NSURLRequest requestWithURL:url];
[NSURLConnection sendAsynchronousRequest:request
                                   queue:[NSOperationQueue mainQueue]
                       completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError)
 {
     leDictionnaire = [NSJSONSerialization JSONObjectWithData: data
                                                      options: 0
                                                        error: &connectionError];
     
     
     leTableau = leDictionnaire[@"data"];
     
     
     
     
     
     NSLog(@"this is the bit%@",userNames);
     
     
     
     [myTableView reloadData];
     
 }];

[super viewDidLoad];




NSDictionary *arrayDict = (NSDictionary *)[leTableau objectAtIndex:indexPath.row];
NSDictionary *userDict = [arrayDict objectForKey:@"user"];
NSString *username = [userDict objectForKey:@"username"];




UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"doi"];

cell.textLabel.text = [(NSDictionary *) [leTableau objectAtIndex:indexPath.row] objectForKey:@"text"];

cell.detailTextLabel.text = [NSString stringWithFormat:@"%@",username];