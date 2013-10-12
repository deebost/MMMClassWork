//
//  WordVC.m
//  WordBrowser
//
//  Created by Jhaybie on 10/2/13.
//  Copyright (c) 2013 Jhaybie. All rights reserved.
//

#import "WordVC.h"

@interface WordVC ()
@property (weak, nonatomic) IBOutlet UILabel *wordLabel;
@property (weak, nonatomic) IBOutlet UILabel *definitionLabel;
@property (weak, nonatomic) IBOutlet UITableView *synonymTableView;

@end

@implementation WordVC
@synthesize wordLabel, definitionLabel, selectedWord, synonymTableView;


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [selectedWord.synonyms count];
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
    cell.textLabel.text = [NSString stringWithFormat:@"%@", selectedWord.synonyms[indexPath.row]];
    return cell;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    wordLabel.text = selectedWord.word;
    definitionLabel.text = selectedWord.definition;
}

@end
