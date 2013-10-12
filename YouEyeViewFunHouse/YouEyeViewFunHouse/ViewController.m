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
}


- (IBAction)changeButtonColor:(id)sender {
    _topColorButton.titleLabel.backgroundColor = [UIColor brownColor];
    
    
    
}
- (IBAction)secondButtonMove:(id)sender {
    _secondButtonMover.frame = CGRectMake(15, 90, 300, 64);
}
- (IBAction)toggleSwitchAction:(id)sender {

    
    if ([_toggleSwitchOnOff.titleLabel.text isEqualToString:@"ON"]) {
        [_toggleSwitchOnOff setTitle:@"OFF" forState:UIControlStateNormal] ;
    }else {
        [_toggleSwitchOnOff setTitle:@"ON" forState:UIControlStateNormal];
    }
}
- (IBAction)slideToChangeNumber:(id)sender {
    
    float value = _sliderProp.value;
    self.sliderLabel.text = [NSString stringWithFormat:@"%f", value];

    
}
- (IBAction)resultButton:(id)sender {
    NSString *firstInt = _firstBoxMath.text;
    NSString *secondInt = _secondBoxMath.text;
    int num1;
    int num2;
    int result;
    num1 = [firstInt intValue];
    num2 = [secondInt intValue];
    result =  num1 + num2;
   
    _resultBox.text = [NSString stringWithFormat:@"%d", result ];
    
    
    
}

    
    

- (IBAction)changeLogo:(id)sender {
    self.blackAndWhiteImage.image = [UIImage imageNamed:@"MobileMakersLogo_color"];
    
}
@end
