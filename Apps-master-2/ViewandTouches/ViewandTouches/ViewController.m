//
//  ViewController.m
//  ViewandTouches
//
//  Created by Sviatoslav Lytovka on 9/26/13.
//  Copyright (c) 2013 Lytovka. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"


@interface ViewController ()

@end

@implementation ViewController

int totalMatched;
MyView *firstMoveTag;
MyView *secondMoveTag;
BOOL isFirstMove;
NSMutableArray *colorArray;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self resetGame];
    colorArray = [[NSMutableArray alloc] init];
    colorArray[0] = [UIColor redColor];
    colorArray[1] = [UIColor greenColor];
    colorArray[2] = [UIColor blueColor];
    colorArray[3] = [UIColor yellowColor];
    colorArray[4] = [UIColor cyanColor];
    colorArray[5] = [UIColor magentaColor];
    colorArray[6] = [UIColor orangeColor];
    colorArray[7] = [UIColor purpleColor];
}

-(void) resetGame
{
    totalMatched = 0;
    isFirstMove = YES;
    for (MyView* view in self.view.subviews)
    {
        if ([view isKindOfClass: [MyView class]])
        {
            MyView* myview = (MyView*)view;
            myview.backgroundColor = [UIColor lightGrayColor];
            myview.hasBeenOpened = NO;
            myview.delegate = self;
        }
    }
}

-(void) makeMove
{
    if (!isFirstMove)
    {
        NSLog (@"First = %i",firstMoveTag.tag);
        NSLog (@"Second = %i",secondMoveTag.tag);
        
        if (firstMoveTag.tag == secondMoveTag.tag)
        {
            NSLog(@"Match!");
            totalMatched+=2;
            if (totalMatched == 16)
            {
                [self turnCardOver: secondMoveTag];
                [self resetGame];
        
            isFirstMove=YES;
            }
            
            [self revealCard: secondMoveTag];
        }
        else
        {
            NSLog(@"Not a match!");
            isFirstMove=YES;
            [self turnCardOver: firstMoveTag];
            [self turnCardOver: secondMoveTag];
        }
    } else
        {
        isFirstMove = NO;
        [self revealCard: firstMoveTag];
        
    }
    NSLog(@"Total of matched cards are: %i", totalMatched);
}



- (void) revealCard: (MyView *) view
{
    view.hasBeenOpened = YES;
    view.backgroundColor = colorArray[view.tag];
    return;
}


- (void) turnCardOver: (MyView *) view
{
    view.hasBeenOpened = NO;
    view.backgroundColor = [UIColor lightGrayColor];
}



-(void) didChooseView: (MyView*) view {
    MyView *tempView = view;
    if (isFirstMove)
        firstMoveTag = tempView;
    else
        secondMoveTag = tempView;
    
    if (isFirstMove && !firstMoveTag.hasBeenOpened)
    {
        [self revealCard: tempView];
        isFirstMove = NO;
    }
    else
        if (!tempView.hasBeenOpened)
            [self makeMove];
}


@end
