//
//  DBViewController.m
//  APIWork
//
//  Created by Deb Bostjancic on 10/3/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"

@interface DBViewController () {
    NSArray* superheroes;
}
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation DBViewController

- (void)viewDidLoad
{
    
    NSURL * url = [NSURL URLWithString:@"http://mobilemakers.co/lib/superheroes.json"];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    
   //    NSURLResponse * response;    version 1
//    NSError * error;              version 1
    
//    NSData * data = [NSURLConnection sendSynchronousRequest:request       version 1
//                                          returningResponse:&response     version 1
//                                                      error:&error];      version 1
//    
    [NSURLConnection sendAsynchronousRequest:request
                                       queue:[NSOperationQueue mainQueue]
                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError)
    {
        superheroes = [NSJSONSerialization JSONObjectWithData:data options:0 error:&connectionError];

        
        [_tableView reloadData];
      

        
        
//        NSString * responseString = [[NSString alloc] initWithBytes:[data bytes]      version 2
//                                                             length:[data length]  version 2
//                                                           encoding:NSUTF8StringEncoding]; version 2
        
        
        NSLog(@"Inside this block");
    }];
    NSLog(@"Just made web call bitches!");
//    NSString * responseString = [[NSString alloc] initWithBytes:[data bytes]      version 1
//                                                         length:[data length]     version 1
//                                                       encoding:NSUTF8StringEncoding]; version 1
//    
//    self.textView.text = responseString;
    [super viewDidLoad];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [superheroes count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"zz"];
    
    cell.textLabel.text = [(NSDictionary *) [superheroes objectAtIndex:indexPath.row] objectForKey:@"name"];
    cell.detailTextLabel.text = [(NSDictionary *) [superheroes objectAtIndex:indexPath.row] objectForKey:@"description"];
    
    return cell;
}
@end
