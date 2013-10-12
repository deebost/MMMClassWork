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


//color changer
- (IBAction)changeButtonColor:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *topColorButton;

//resizer
@property (weak, nonatomic) IBOutlet UIButton *secondButtonMover;
- (IBAction)secondButtonMove:(id)sender;

//toggler
@property (weak, nonatomic) IBOutlet UIButton *toggleSwitchOnOff;
- (IBAction)toggleSwitchAction:(id)sender;



//slider junk
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISlider *labelNumberSlider;
- (IBAction)slideToChangeNumber:(id)sender;
@property (weak, nonatomic) IBOutlet UISlider *sliderProp;


//math is cool

@property (weak, nonatomic) IBOutlet UILabel *firstNumberBox;
@property (weak, nonatomic) IBOutlet UILabel *secondNumberBox;
@property (weak, nonatomic) IBOutlet UILabel *sumBox;
- (IBAction)mathButton:(id)sender;

//IN BEAUTIFUL COLOR
@property (weak, nonatomic) IBOutlet UIImageView *mobileMakersLogoSlot;

- (IBAction)colorizeButton:(id)sender;






@end
