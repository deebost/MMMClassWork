//
//  DBViewController.m
//  SimonSays 4.w
//
//  Created by Deb Bostjancic on 10/10/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"
#import "DBColorPanelView.h"

@interface DBViewController (){
    NSArray *viewTags;
}

@end

@implementation DBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    viewTags = [[NSArray alloc] init];
    viewTags = @[@"1",@"2",@"3",@"4",@"5",@"6"];
    
    float delay = 0.0f;
    
    for (DBColorPanelView *view in self.view.subviews) {
        [self performSelector:@selector(blinkColors:) withObject:view afterDelay:delay];
        delay = delay + 0.6f;
    }
}

-(void)blinkColors:(UIView *)view
{
    UIColor *originalColor = view.backgroundColor;
    [UIView animateWithDuration:0.7f animations:^{
        view.backgroundColor = [UIColor whiteColor];
    } completion:^(BOOL finished) {
        view.backgroundColor = originalColor;
    }];
}

- (IBAction)startGameOnPress:(id)sender {
    
}

@end
