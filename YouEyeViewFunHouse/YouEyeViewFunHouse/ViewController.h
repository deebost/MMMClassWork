//
//  ViewController.h
//  ViewFunHouse
//
//  Created by keith Alperin on 4/30/13.
//  Copyright (c) 2013 Mobile Makers. All rights reserved.
//

#import <UIKit/UIKit.h>
UIButton *toggleSwitchOnOff;

@interface ViewController : UIViewController

//color change
- (IBAction)changeButtonColor:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *topColorButton;

//resize / move
@property (weak, nonatomic) IBOutlet UIButton *secondButtonMover;
- (IBAction)secondButtonMove:(id)sender;

// on and off
@property (weak, nonatomic) IBOutlet UIButton *toggleSwitchOnOff;
- (IBAction)toggleSwitchAction:(id)sender;

//slider stuff
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISlider *labelNumberSlider;
- (IBAction)slideToChangeNumber:(id)sender;
@property (weak, nonatomic) IBOutlet UISlider *sliderProp;

//math
@property (weak, nonatomic) IBOutlet UILabel *firstBoxMath;

@property (weak, nonatomic) IBOutlet UILabel *secondBoxMath;
@property (weak, nonatomic) IBOutlet UILabel *resultBox;
- (IBAction)resultButton:(id)sender;

//color change
@property (weak, nonatomic) IBOutlet UIButton *colorizeButton;
- (IBAction)changeLogo:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *blackAndWhiteImage;
@end
