//
//  ViewController.m
//  WordBrowser
//
//  Created by Jhaybie on 10/2/13.
//  Copyright (c) 2013 Jhaybie. All rights reserved.
//

#import "RootVC.h"

@interface RootVC ()
@property (weak, nonatomic) IBOutlet UITableView *keyTableView;

@end

@implementation RootVC
@synthesize keyTableView;

NSMutableArray *keys;
NSMutableDictionary *dict;
WordClass *selectedWord;


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [dict count];
}


-(UITableViewCell *)tableView: (UITableView *)tableView cellForRowAtIndexPath: (NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ABC"];
    keys = [dict allKeys].mutableCopy;
    cell.textLabel.text = [NSString stringWithFormat:@"%@", keys[indexPath.row]];
    return cell;
}

- (void)prepareForSegue: (UIStoryboardSegue *)segue sender: (UITableViewCell *)sender
{
    int row = [keyTableView indexPathForCell:sender].row;

    selectedWord = [dict objectForKey:keys[row]];
    WordVC *wordvc = (id)segue.destinationViewController;
    wordvc.selectedWord = selectedWord;
}


-(id)initWithCoder:(NSCoder *)aDecoder
{
    dict = [[NSMutableDictionary alloc] init];

    self = [super initWithCoder: aDecoder];
    if (self)
    {
        WordClass *newWord1 = [[WordClass alloc] init];
        NSMutableArray *newSyn1 = [[NSMutableArray alloc] init];
        newSyn1 = @[@"unnecessary", @"unneeded"].mutableCopy;
        newWord1 = [newWord1 addWord:@"superfluous"
                      withDefinition:@"unnecessary, esp. through being more than enough: the purchaser should avoid asking for superfluous information."
                         andSynonyms: newSyn1];
                
        WordClass *newWord2 = [[WordClass alloc] init];
        NSMutableArray *newSyn2 = [[NSMutableArray alloc] init];
        newSyn2 = @[@"gala", @"hoedown"].mutableCopy;
        newWord2 = [newWord2 addWord:@"jamboree"
                      withDefinition:@"a large celebration or party, typically a lavish and boisterous one: the film industry's annual jamboree in Cannes."
                         andSynonyms: newSyn2];
        
        WordClass *newWord3 = [[WordClass alloc] init];
        NSMutableArray *newSyn3 = [[NSMutableArray alloc] init];
        newSyn3 = @[@"fart", @"wind"].mutableCopy;
        newWord3 = [newWord3 addWord:@"flatulence"
                      withDefinition:@"the accumulation of gas in the alimentary canal: foods that may cause flatulence; inflated or pretentious speech or writing; pomposity: the flatulence characterizing his writings."
                         andSynonyms: newSyn3];
        
        
        WordClass *newWord4 = [[WordClass alloc] init];
        NSMutableArray *newSyn4 = [[NSMutableArray alloc] init];
        newSyn4 = @[@"talkative", @"gabby"].mutableCopy;
        newWord4 = [newWord4 addWord:@"loquacious"
                      withDefinition:@"tending to talk a great deal; talkative."
                         andSynonyms: newSyn4];
        
        
        [dict setObject:newWord1 forKey:newWord1.word];
        [dict setObject:newWord2 forKey:newWord2.word];
        [dict setObject:newWord3 forKey:newWord3.word];
        [dict setObject:newWord4 forKey:newWord4.word];
        //NSLog(@"%@",[NSString stringWithFormat:@"%i",[dict count]]);
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    selectedWord = [[WordClass alloc] init];
}

@end
