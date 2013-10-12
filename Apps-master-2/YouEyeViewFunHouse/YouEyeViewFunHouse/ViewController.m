//
//  ViewController.m
//  ViewFunHouse
//
//  Created by keith Alperin on 4/30/13.
//  Copyright (c) 2013 Mobile Makers. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _label.text=@"On";
}


- (IBAction)changingColor:(id)sender {
    _changeColor.backgroundColor=[UIColor greenColor];
}

- (IBAction)addingValues:(id)sender {
    int n1=_numberOne.text.intValue;
    int n2=_numberTwo.text.intValue;
    int n3=n1+n2;
    NSString *answer=[NSString stringWithFormat:@"%d", n3];
    _sum.text=answer;
}

- (IBAction)onPress:(id)sender {
    if ([_label.text isEqualToString:@"On"])
    {
        _label.text=@"Off";
    }
    else { _label.text=@"On";
    }
    
}
- (IBAction)slider:(id)sender {
    _sliderText.text=[NSString stringWithFormat:@"Slider value is %f", _Slider.value];
}

- (IBAction)colorizing:(id)sender {
    UIImage *color=[UIImage imageNamed:@"MobileMakersLogo_color.png"];
    [_logo setImage:color];
    
}
@end
