//
//  ViewController.m
//  SimonSays
//
//  Created by Agnt86 on 10/10/13.
//  Copyright (c) 2013 Agnt86. All rights reserved.
//

#import "ViewController.h"
#import "ColorPanelView.h"
@interface ViewController (){
    
    
    NSArray *tagArray;

}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    NSLog(@"This is self.view.subviews %@", self.view.subviews);
    
    
    
    tagArray = @[@"1", @"2",@"3",@"4", @"5", @"6"];
    
    float delayPeriod=0.0;
    
    for (ColorPanelView *view in self.view.subviews) {
        

        
         [self performSelector:@selector(switchColor:) withObject:view afterDelay:delayPeriod];
        
        delayPeriod = delayPeriod + 0.5f;
    }
     
    
}

-(void)switchColor:(UIView *)view
{
    UIColor *prevColor = view.backgroundColor;
    
    
    [UIView animateWithDuration:.6f animations:^{ view.backgroundColor = [UIColor whiteColor];} completion:^(BOOL finished){
        [UIView animateWithDuration:.6f animations:^{view.backgroundColor = prevColor;}];
    }];

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
