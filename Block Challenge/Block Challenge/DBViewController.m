//
//  DBViewController.m
//  Block Challenge
//
//  Created by Deb Bostjancic on 10/1/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"
#import "OddnEvenSplit.h"

@interface DBViewController ()
@property (weak, nonatomic) IBOutlet UITableView *OddnEvenTable;
@property (weak, nonatomic) IBOutlet UIButton *evenButton;
@property (weak, nonatomic) IBOutlet UIButton *oddButton;

- (IBAction)showResultOnPress:(id)sender;

@end

@implementation DBViewController {
    NSMutableArray* intergerArray, *splitArray;
}


- (void) showEvens
{
    
}
- (void) showOdds
{
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 50;
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
    cell.textLabel.text = [NSString stringWithFormat:@"%@", intergerArray[indexPath.row]];
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    intergerArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < 50; i++)
    {   int x = arc4random() %256;
        intergerArray[i] = [NSString stringWithFormat:@"%i", x];
    }
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    OddnEvenSplit* splitView = segue.destinationViewController;

}




- (IBAction)showResultOnPress:(id)sender {
    NSMutableArray *evensArray = [[NSMutableArray alloc] init];
    NSMutableArray *oddsArray = [[NSMutableArray alloc] init];

     for (int i = 0; i < [intergerArray count] i++);
    
    
    if (sender == _oddButton) {
       

        
    }
    
    [self performSegueWithIdentifier:@"oddOrEvenSegue" sender:self];

}
@end
