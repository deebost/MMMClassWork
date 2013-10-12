//
//  DBViewController.m
//  ViewsandTouches
//
//  Created by Deb Bostjancic on 9/26/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"

@interface DBViewController ()

@end

int totalCorrectMatches;

MyView*  firstChoiceTagNumber;
MyView*  secondChoiceTagNumber;
BOOL firstMove;

@implementation DBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self newGame];
    
}



-(void)newGame
{
    totalCorrectMatches = 0;
    firstMove = YES;
    
    for (UIView* view in self.view.subviews)
    {
        if ([view isKindOfClass:[MyView class]])
        {
            MyView* myView = (MyView*)view;
            myView.backgroundColor = [UIColor cyanColor];
            myView.viewHasBeenOpened = NO;
            myView.delegate = self;
        }
    }
}
-(void)moveMakin
{
    if (!firstMove)
    {
        NSLog(@"first tag = %i second tag = %i", firstChoiceTagNumber.tag, secondChoiceTagNumber.tag);
        if (firstChoiceTagNumber.tag == secondChoiceTagNumber.tag)
        {
            NSLog(@"Correct Match!");
            totalCorrectMatches += 1;
            if (totalCorrectMatches == 8)
            {
                [self wrongViewChoice: secondChoiceTagNumber];
            
                [self newGame];
                            }
            firstMove = YES;
        [self showViewChoice: secondChoiceTagNumber];
            
        }
     else
        {
            
            NSLog(@"Bad Match");
        firstMove = YES;
        [self wrongViewChoice:firstChoiceTagNumber];
        [self wrongViewChoice:secondChoiceTagNumber];
        }
    } else
        {
          firstMove = NO;
        [self showViewChoice: firstChoiceTagNumber];
        }
    NSLog(@"Total number of matches = %i", totalCorrectMatches);
    
}

-(void)showViewChoice: (MyView *) view
{
    view.viewHasBeenOpened = YES;
    view.backgroundColor = [UIColor blueColor];
    NSString *imageName = [NSString stringWithFormat:@"mustache%i.png", view.tag];
    UIImage * mustacheImage = [UIImage imageNamed:imageName];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:mustacheImage];
    
    // Compressed code
    //UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"mustache%i.png", view.tag]]];
    
    [view addSubview:imageView];

    
    
    return;
    
}

-(void)wrongViewChoice: (MyView *) view
{
    view.viewHasBeenOpened = NO;
    view.backgroundColor = [UIColor cyanColor];
    
}

-(void)didChooseView:(MyView *)view
{
    MyView* placeHolderView = view;
    if (firstMove)
        firstChoiceTagNumber = placeHolderView;
    else
        secondChoiceTagNumber = placeHolderView;
    if (firstMove && !firstChoiceTagNumber.viewHasBeenOpened)
    {
        [self showViewChoice: placeHolderView];
        firstMove = NO;
    }
    else
        if (!placeHolderView.viewHasBeenOpened)
            [self moveMakin];
}
@end
