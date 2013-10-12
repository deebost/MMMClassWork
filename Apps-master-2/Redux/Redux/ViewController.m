//
//  ViewController.m
//  Redux
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
	UIButton *mybutton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    // instend of "Click Me" you can write your own message/Label
    
    [mybutton setTitle:@"Change my color" forState:UIControlStateNormal];
    
    // create the Rectangle Frame with specified size
    
    mybutton.frame = CGRectMake(75, 10, 150, 50); // x,y,width,height
    
    [self.view addSubview:mybutton];// add button to your view.
    
    
    UITextField *myText=[[UITextField alloc] initWithFrame:CGRectMake(75, 70, 150, 50)];
    myText.borderStyle = UITextBorderStyleRoundedRect;
    myText.textColor = [UIColor blackColor];
    myText.font = [UIFont systemFontOfSize:20.0];
    myText.text = @"ON";  
    myText.autocorrectionType = UITextAutocorrectionTypeNo;
    myText.backgroundColor = [UIColor clearColor];
    myText.keyboardType = UIKeyboardTypeDefault;
    myText.returnKeyType = UIReturnKeyDone;
    
    [self.view addSubview:myText];
    
    UIButton *Button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    Button.frame=CGRectMake(75, 125, 150, 50);
    [Button setTitle:@"On/Off" forState:UIControlStateNormal];
    [self.view addSubview:Button];
    
    UILabel *textField=[[UILabel alloc]initWithFrame:CGRectMake(75, 250, 150, 40)];
    textField.textColor = [UIColor blackColor];
    textField.text=@"Slider value";
    [self.view addSubview:textField];
    
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(10, 300, 300, 20)];
    //[_slider addTarget:self action:<#(SEL)#> forControlEvents:<#(UIControlEvents)#>]
    
    [self.view addSubview:slider];
    
    
    UILabel *textField1=[[UILabel alloc]initWithFrame:CGRectMake(30, 350, 30, 30)];
    textField1.text=@"3";
    [self.view addSubview:textField1];
    UILabel *textField2=[[UILabel alloc]initWithFrame:CGRectMake(80, 350, 30, 30)];
    textField2.text=@"7";
    [self.view addSubview:textField2];
    UILabel *textField3=[[UILabel alloc]initWithFrame:CGRectMake(150, 350, 45, 30)];
    textField3.backgroundColor=[UIColor lightGrayColor];
    [self.view addSubview:textField3];
    
    UITextField *plusSign=[[UITextField alloc] initWithFrame:CGRectMake(65, 350, 25, 25)];
    plusSign.textColor = [UIColor blackColor];
    plusSign.backgroundColor = [UIColor clearColor];
    plusSign.text=@"+";
    [self.view addSubview:plusSign];
    
    UITextField *equalSign=[[UITextField alloc] initWithFrame:CGRectMake(125, 350, 25, 25)];
    equalSign.textColor = [UIColor blackColor];
    equalSign.backgroundColor = [UIColor clearColor];
    equalSign.text=@"=";
    [self.view addSubview:equalSign];
    
    UIButton *ButtonMath=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    ButtonMath.frame=CGRectMake(225, 350, 70, 50);
    [ButtonMath setTitle:@"Math!" forState:UIControlStateNormal];
    [self.view addSubview:ButtonMath];
    
    
    UIImageView *logo=[[UIImageView alloc] initWithFrame:CGRectMake(20, 400, 80, 80)];
    [logo setImage:[UIImage imageNamed:@"MobileMakersLogo_black_and_white.png"]];
    [self.view addSubview:logo];
    
    UIButton *ButtonColorize=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    ButtonColorize.frame=CGRectMake(150, 425, 70, 50);
    [ButtonColorize setTitle:@"Colorize!" forState:UIControlStateNormal];
    [self.view addSubview:ButtonColorize];
}

    -(void)sliderAction:(id) sender{
        _textField.text=[NSString stringWithFormat:@"Slider value is %f", _slider.value];
    }


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
