//
//  DBViewController.m
//  Web View
//
//  Created by Deb Bostjancic on 9/23/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"

@interface DBViewController (){
    NSMutableArray* urls;
    NSInteger place;
    __weak IBOutlet UIButton *goButton;
}
    
@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UITextField *myTextField;
- (IBAction)changeWebViewOnPress:(id)sender;


@end


@implementation DBViewController
@synthesize myTextField,activityIndicator;
- (void)viewDidLoad
{
    
    
    [super viewDidLoad];
    urls = [[NSMutableArray alloc] init];
    [activityIndicator stopAnimating];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UIWebViewDelegate

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [activityIndicator stopAnimating];
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    [activityIndicator startAnimating];
}

    
- (IBAction)backWebVIew:(id)sender {
    place -= 1;
    NSURLRequest* request;
    NSURL* url;
    url = [NSURL URLWithString:[urls objectAtIndex:place]];
    request = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];
    myTextField.text = [urls objectAtIndex:place];
    
            // [UIView beginAnimations:Nil context:NULL];
            //[UIView setAnimationsEnabled:YES];
            //_backButton.alpha = 1;
    
            //[UIView commitAnimations];
    
    
    
    
}

- (IBAction)forwardWebView:(id)sender {
    place += 1;
    NSURLRequest* request;
    NSURL* url;
    url = [NSURL URLWithString:[urls objectAtIndex:place]];
    request = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];
    myTextField.text = [urls objectAtIndex:place];
    
}

- (IBAction)changeWebViewOnPress:(id)sender {
    NSURLRequest* request;
    NSURL* url;
    url = [NSURL URLWithString:myTextField.text];
    request = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];
    [myTextField resignFirstResponder];
    [urls addObject:myTextField.text];
    place = [urls count];
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:4];
    CGAffineTransform transform = CGAffineTransformMakeTranslation(-10, 10);
    [goButton setTransform:transform];
    [UIView commitAnimations];
}
@end
