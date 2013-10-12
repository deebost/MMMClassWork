//
//  OddnEvenSplit.m
//  Block Challenge
//
//  Created by Deb Bostjancic on 10/1/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "OddnEvenSplit.h"

@interface OddnEvenSplit ()
@property (weak, nonatomic) IBOutlet UITableView *splitViewTable;

@end

@implementation OddnEvenSplit


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
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

@end
