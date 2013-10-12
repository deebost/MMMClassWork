//
//  ViewController.h
//  ViewFunHouse
//
//  Created by keith Alperin on 4/30/13.
//  Copyright (c) 2013 Mobile Makers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *changeColor;

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UILabel *sliderText;
@property (weak, nonatomic) IBOutlet UISlider *Slider;

@property (weak, nonatomic) IBOutlet UILabel *numberOne;

@property (weak, nonatomic) IBOutlet UILabel *numberTwo;
@property (weak, nonatomic) IBOutlet UILabel *sum;

@property (weak, nonatomic) IBOutlet UIImageView *logo;
@property (weak, nonatomic) IBOutlet UIButton *button3;


- (IBAction)changingColor:(id)sender;

- (IBAction)addingValues:(id)sender;
- (IBAction)onPress:(id)sender;
- (IBAction)slider:(id)sender;
- (IBAction)colorizing:(id)sender;


@end
