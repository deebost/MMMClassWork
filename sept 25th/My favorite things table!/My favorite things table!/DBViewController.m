//
//  DBViewController.m
//  My favorite things table!
//
//  Created by Deb Bostjancic on 9/24/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"
#import "EditViewController.h"

@interface DBViewController () <EditViewControllerDelegate>
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
       
        
    }
    cell.textLabel.text = _mutableArray[indexPath.row];
    return cell;
    }

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    EditViewController* editViewController = [[EditViewController alloc] init];
    editViewController.delegate = self;
    editViewController.index = indexPath.row;
    editViewController.passedText = _mutableArray[indexPath.row];
    [self.navigationController pushViewController:editViewController animated:YES];
    
    
}
-(void)editViewController:(id)evc didEdit:(NSString *)text index:(int)index{
    _mutableArray[index] = text;
    [_bodyTableView reloadData];
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)addTextOnPress:(id)sender {
    
    [_mutableArray addObject:_topTextField.text];
    [_topTextField resignFirstResponder];
    [_bodyTableView reloadData];
    
    
}

- (IBAction)removeTextOnPress:(id)sender {
}
@end
