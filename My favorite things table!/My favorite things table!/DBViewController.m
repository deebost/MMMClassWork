//
//  DBViewController.m
//  My favorite things table!
//
//  Created by Deb Bostjancic on 9/24/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"

@interface DBViewController ()

@end

@implementation DBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _mutableArray = [[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  [self.mutableArray count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"abc"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"abc"];
        cell.textLabel.textColor = [UIColor purpleColor];
        cell.textLabel.backgroundColor = [UIColor redColor];
        
    }
    cell.textLabel.text = _mutableArray[indexPath.row];
    return cell;
}


- (IBAction)addTextOnPress:(id)sender {
    
    [_mutableArray addObject:_topTextField.text];
    [_topTextField resignFirstResponder];
    [_bodyTableView reloadData];
    
    
}

- (IBAction)removeTextOnPress:(id)sender {
}
@end
