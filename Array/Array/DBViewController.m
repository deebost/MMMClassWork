//
//  DBViewController.m
//  Array
//
//  Created by Deb Bostjancic on 9/24/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"
#import "SecondViewController.h"

@interface DBViewController ()

@end

@implementation DBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	_array = [[NSMutableArray alloc] init];
   
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  [self.array count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"abc"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"abc"];
        cell.textLabel.textColor = [UIColor purpleColor];
        cell.textLabel.backgroundColor = [UIColor redColor];
    
        }
    cell.textLabel.text = _array[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    SecondViewController* secondViewController = [[SecondViewController alloc] init];
    secondViewController.delegate = self;
    secondViewController.delegate = self;
    secondViewController.index = indexPath.row;
    secondViewController.passedText = _array[indexPath.row];
    
    [self.navigationController pushViewController:secondViewController animated:YES];
}

-(void)secondViewController:(id)svc didEdit:(NSString *)text index:(int)index{
    _array[index]=text;
    [_myTabelView reloadData];
    [self.navigationController popViewControllerAnimated:YES];
}


- (IBAction)buttonPress:(id)sender {
                    //_myLabel.text = @"";
    [_array addObject:_myTextField.text];
    [_myTextField resignFirstResponder];
    [_myTabelView reloadData];
    
                    //for (NSString *string in _array){
                    //  _myLabel.text = [_myLabel.text stringByAppendingString:string];
        
                    // }
                    // NSLog(@" %@ ", _array);
}

@end
