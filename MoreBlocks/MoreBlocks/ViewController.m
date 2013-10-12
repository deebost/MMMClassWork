//
//  ViewController.m
//  MoreBlocks
//
//  Created by Jhaybie on 10/1/13.
//  Copyright (c) 2013 Jhaybie. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *numberTable;
@property (weak, nonatomic) IBOutlet UIButton *oddsButton;
@property (weak, nonatomic) IBOutlet UIButton *evensButton;
@property (weak, nonatomic) IBOutlet UIButton *thresholdButton;

@end

@implementation ViewController
@synthesize evensButton, oddsButton, threshold, thresholdButton;

NSMutableArray *integerArray, *splitArray;


-(NSInteger)tableView: (UITableView *)tableView numberOfRowsInSection: (NSInteger)section
{
    return [integerArray count];
}


- (void)tableView: (UITableView *)tableView didSelectRowAtIndexPath: (NSIndexPath *)indexPath
{
    threshold = integerArray[indexPath.row];
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
    if (threshold.intValue < [integerArray[indexPath.row] intValue])
        cell.textLabel.text = [NSString stringWithFormat: @"%@", integerArray[indexPath.row]];
    return cell;
}


- (void) generateFilteredArray
{
   
}


                                            


- (void)prepareForSegue: (UIStoryboardSegue *)segue sender: (id)sender
{
    NSMutableArray *oddsArray = [[NSMutableArray alloc] init];
    NSMutableArray *evensArray = [[NSMutableArray alloc] init];
    
    
    if (sender == thresholdButton)
    {
        __unused ThresholdViewController *threshView = segue.destinationViewController;
    }
    else
    {
        SplitViewController *splitView = segue.destinationViewController;
        for (int i = 0; i < [integerArray count]; i++)
        {
            if ([integerArray[i] intValue] % 2 == 0)
                [evensArray addObject: integerArray[i]];
            else
                [oddsArray addObject: integerArray[i]];
        }
        if (sender == oddsButton)
        {
            splitArray = oddsArray;
            splitView.title = @"Odds Only";
        }
        else
        {
            splitArray = evensArray;
            splitView.title = @"Evens Only";
        }
        splitView.splitArray = splitArray;
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];

    void (^generateArrays)() = ^{
        integerArray = [[NSMutableArray alloc] init];
        splitArray = [[NSMutableArray alloc] init];
        for (int i = 0; i < 50; i ++)
        {
            int x = arc4random() % 256;
            integerArray[i] = [NSString stringWithFormat:@"%i", x];
        }
    };
    
    generateArrays();
    threshold = @"0";
}


@end
