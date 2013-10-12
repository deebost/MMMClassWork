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
    //int holder;
}

@end

@implementation DBViewController
@synthesize bottomTableList, array, thingsToAddToList, updated;

- (void)viewDidLoad
{
    [super viewDidLoad];
    array = [[NSMutableArray alloc] init];
    bottomTableList.delegate = self;
    //secondViewController = [[SecondViewController alloc] init];
    secondViewController.delegate = self;
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
        // ^^ gets edit button
    
    thingsToAddToList.textColor = [UIColor purpleColor];
    thingsToAddToList.backgroundColor = [UIColor cyanColor];
    bottomTableList.backgroundColor = [UIColor yellowColor];
    
    
    
}


- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
                [super setEditing:editing animated:animated];
                [bottomTableList setEditing:editing animated:animated];
    // ^^ makes edit button Edit n go to cancel
}

    



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
                return  [self.array count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
        UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"abc"];
                if (!cell)
        {
                cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"abc"];
        }
                cell.textLabel.text = array[indexPath.row];
                cell.backgroundColor = [UIColor cyanColor];
                cell.textLabel.textColor = [UIColor purpleColor];
                return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
            if (editingStyle == UITableViewCellEditingStyleDelete)
        {
            [array removeObjectAtIndex:indexPath.row];
            [bottomTableList reloadData];
            
        }
}


    


- (IBAction)addTextToToDoList:(id)sender {
    
    [array addObject:thingsToAddToList.text];
    [thingsToAddToList resignFirstResponder];
    thingsToAddToList.textColor = [UIColor purpleColor];
    thingsToAddToList.backgroundColor = [UIColor yellowColor];
    [bottomTableList reloadData];
}

     
     - (IBAction)changeThingsToAddToListColor:(id)sender {
         thingsToAddToList.backgroundColor = [UIColor cyanColor];
         thingsToAddToList.textColor = [UIColor purpleColor];
     }
@end