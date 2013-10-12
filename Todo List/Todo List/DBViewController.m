//
//  DBViewController.m
//  Todo List
//
//  Created by Deb Bostjancic on 9/24/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"
#import "SecondViewController.h"

@interface DBViewController ()
{
    SecondViewController* secondViewController;
    int holder;
}

@end

@implementation DBViewController
@synthesize bottomTableList, array, thingsToAddToList, updated;

- (void)viewDidLoad
{
    [super viewDidLoad];
    array = [[NSMutableArray alloc] init];
    bottomTableList.delegate = self;
    bottomTableList.delegate = self;
    
    secondViewController = [[SecondViewController alloc] init];
    
    secondViewController.delegate = self;
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  [self.array count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"abc"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"abc"];
   
        cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
        
    }
    cell.textLabel.text = array[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"tapped button row is %f", bottomTableList.rowHeight);
    [self presentViewController:secondViewController animated:YES completion:nil];
    holder = indexPath.row;
}

- (IBAction)addTextToToDoList:(id)sender {
    
    [array addObject:thingsToAddToList.text];
    [thingsToAddToList resignFirstResponder];
    [bottomTableList reloadData];
    
}
@end
