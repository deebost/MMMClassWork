//
//  DBViewController.m
//  Wikipedia 3.4
//
//  Created by Deb Bostjancic on 10/3/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"

@interface DBViewController (){
    NSURL *url;
    NSURLRequest *request;
    NSMutableArray *articleArray;
    NSString *tempString;
    NSMutableDictionary* wikiDict;
    NSDictionary* tempDict;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *searchTextField;
@property (weak, nonatomic) IBOutlet UIButton *searchButton;
- (IBAction)startSearchOnPress:(id)sender;

@end

@implementation DBViewController

- (void)viewDidLoad
{
    

    
    [super viewDidLoad];
	
}




- (IBAction)startSearchOnPress:(id)sender {

    [self createTableWithURL];
     [_tableView reloadData];
}

-(void)createTableWithURL{
    
    NSString* searchTemp = _searchTextField.text;
    NSString* firstPartURL = [NSString stringWithFormat:@"https://en.wikipedia.org/w/api.php?action=query&list=search&srsearch="];
    NSString* lastPartURL = [NSString stringWithFormat:@"&srprop=snippet&format=json"];
    
    tempString = [NSString stringWithFormat:@"%@%@%@", firstPartURL, searchTemp, lastPartURL];
    NSLog(@"This is URL %@",tempString);
    
    url = [NSURL URLWithString:tempString];
    request = [NSURLRequest requestWithURL:url];
    
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        
      wikiDict = [NSJSONSerialization JSONObjectWithData:data options:0 error:&connectionError];
        
        NSMutableDictionary* dict2 =[wikiDict objectForKey:@"query"];
        
        NSMutableArray *tempArray =[dict2 objectForKey:@"search"];
        
        for (NSDictionary *dict3 in tempArray) {
            NSEnumerator *enumerator = [dict2 keyEnumerator];
            id key;
            
            while((key = [enumerator nextObject])) {
                if ([key isEqual:@"title"] ) {
                    NSString *title = [dict2 objectForKey:key];
                    [articleArray addObject:title];
                }
            }
        }
        
        
    
        
        
        

        
        
       
    }];
    
    NSLog(@"just created the articleArray: %i",[articleArray count]);

}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
        NSLog(@"This is URL %@",tempString);
        return [articleArray count];
}
    
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
        UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"zz"];
        
        cell.textLabel.text = [articleArray objectAtIndex:indexPath.row];

        
        return cell;
}
    

    

@end
