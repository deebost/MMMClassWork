//
//  ViewController.h
//  Redux
//
//  Created by Sviatoslav Lytovka on 9/18/13.
//  Copyright (c) 2013 Lytovka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property(nonatomic,retain) UISlider *slider;
@property(nonatomic,retain) UILabel *textField;

-(void) sliderAction:(id) sender;

@end
