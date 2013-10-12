//
//  ViewController.h
//  StopWatch
//
//  Created by Sviatoslav Lytovka on 9/20/13.
//  Copyright (c) 2013 Lytovka. All rights reserved.
//

#import <UIKit/UIKit.h>
float NumberCountdown;
@interface ViewController : UIViewController{
    NSTimer *timer;
}
@property (weak, nonatomic) IBOutlet UILabel *timerFace;
@property (weak, nonatomic) IBOutlet UILabel *switcherLabel;
@property (nonatomic) IBOutlet UIButton *start;
@property (weak, nonatomic) IBOutlet UIButton *stop;
@property (weak, nonatomic) IBOutlet UIButton *modeButton;
@property (weak, nonatomic) IBOutlet UIButton *modeButton2;
@property (weak, nonatomic) IBOutlet UIButton *lap;
@property (weak, nonatomic) IBOutlet UILabel *labelLap;
@property (weak, nonatomic) IBOutlet UISlider *sliderValue;
@property (weak, nonatomic) IBOutlet UIButton *pause;


- (IBAction)onPressLap:(id)sender;
- (IBAction)sliding:(id)sender;
- (IBAction)onStart:(id)sender;
- (IBAction)onStop:(id)sender;
- (IBAction)onPause:(id)sender;
- (IBAction)ChangeMode:(id)sender;
- (IBAction)ChangeModetoTimer:(id)sender;


-(void)countDown;
-(void) countDownTimer;


@end
