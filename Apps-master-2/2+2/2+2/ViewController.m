//
//  ViewController.m
//  2+2
//
//  Created by Sviatoslav Lytovka on 9/18/13.
//  Copyright (c) 2013 Lytovka. All rights reserved.
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addNumbers:(id)sender {
    float a=_field1.text.floatValue;
    float b=_field2.text.floatValue;
    float c=a+b;
    _result.text=[NSString stringWithFormat:@"%f", c];
}

- (IBAction)subtractNumbers:(id)sender {
    float a=_field1.text.floatValue;
    float b=_field2.text.floatValue;
    float c=a-b;
    _result.text=[NSString stringWithFormat:@"%f", c];
}
- (IBAction)multiplyNumber:(id)sender {
    float a=_field1.text.floatValue;
    float b=_field2.text.floatValue;
    float c=a*b;
    _result.text=[NSString stringWithFormat:@"%f", c];
}

- (IBAction)divideNumber:(id)sender {
    float a=_field1.text.floatValue;
    float b=_field2.text.floatValue;
    if (b==0) {
        _result.text=[NSString stringWithFormat:@"Division impossible"];
    }
    else {
    float c=a/b;
    _result.text=[NSString stringWithFormat:@"%f", c];
    }
}
@end
