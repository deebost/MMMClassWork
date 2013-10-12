//
//  SplitViewController.m
//  MoreBlocks
//
//  Created by Jhaybie on 10/1/13.
//  Copyright (c) 2013 Jhaybie. All rights reserved.
//

#import "SplitViewController.h"

@interface SplitViewController ()
@property (weak, nonatomic) IBOutlet UITableView *splitViewTable;

@end

@implementation SplitViewController
@synthesize splitArray, splitViewTable;


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [splitArray count];
}


-(UITableViewCell *)tableView: (UITableView *)tableView cellForRowAtIndexPath: (NSIndexPath *)indexPath
{
    NSString *arrayIdentifier = @"xxx";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: arrayIdentifier];
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:arrayIdentifier];
    }
    cell.textLabel.text = [NSString stringWithFormat: @"%@", splitArray[indexPath.row]];
    return cell;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    for (int i = 0; i < [splitArray count]; i++)
    {
        NSLog(@"%@", splitArray[i]);
    }
}


@end
