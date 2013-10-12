//
//  ViewController.m
//  StopWatch
//
//  Created by Sviatoslav Lytovka on 9/20/13.
//  Copyright (c) 2013 Lytovka. All rights reserved.
//

#import "ViewController.h"
#import <AudioToolbox/AudioToolbox.h>
#import <UIKit/UIKit.h>
@interface ViewController ()

@end

@implementation ViewController

-(void) countDown {
    NumberCountdown=NumberCountdown+1;
    int secs=(int)(NumberCountdown/10)%60;
    int fraction=(int)(NumberCountdown)%10;
    int mins=(int)(NumberCountdown/600)%60;
    int hours=(int)(NumberCountdown/36000);
    _timerFace.text=[NSString stringWithFormat:@"%d:%02d:%02d.%d", hours, mins, secs, fraction];
    
}

-(void) countDownTimer {
    

    NumberCountdown=NumberCountdown-1;
    int secs=(int)(_sliderValue.value+NumberCountdown/10)%60;
    int mins=(int)((_sliderValue.value+0.1*NumberCountdown)/60)%60;
    int hours=(int)((_sliderValue.value+0.1*NumberCountdown)/3600);
    
    if (secs<0) {
        
        _timerFace.text=@"Done!";
        [timer invalidate];
        
        
        //Audio services initialization
        
    } else {
    _timerFace.text=[NSString stringWithFormat:@"%d:%02d:%02d", hours, mins, secs];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _lap.enabled=NO;
    _modeButton.hidden=YES;
    _modeButton2.hidden=NO;
    _stop.hidden=YES;
    _pause.hidden=NO;
    _start.hidden=NO;
    _sliderValue.hidden=YES;
    _pause.enabled=NO;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

- (IBAction)onStart:(id)sender {
    _stop.hidden=NO;
    _pause.hidden=NO;
    _start.hidden=YES;
    _pause.enabled=YES;
    _lap.enabled=YES;
    if ([_switcherLabel.text isEqual:@"StopWatch"]) {
    
    timer=[NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(countDown) userInfo:nil repeats:YES];
        //Method above creates and returns a new NSTimer object and schedules it on the current run loop in the default mode. The selector corresponds to a method that returns void (countDown) and takes a single argument. The timer passes itself as the argument to this method.
        //Target: The object to which to send the message specified by aSelector when the timer fires. The target object is retained by the timer and released when the timer is invalidated.
   
    } else {
    timer=[NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(countDownTimer) userInfo:nil repeats:YES];
        
        
    }
}

- (IBAction)onStop:(id)sender {
    NumberCountdown=0;
    //"Invalidate" stops the receiver from ever firing again and requests its removal from its run loop. To stop timer we use "invalidate" method
    [timer invalidate];

    _timerFace.text=[NSString stringWithFormat:@"0:00:00.0"];
    _stop.hidden=YES;
    _pause.hidden=NO;
    _start.hidden=NO;
    _sliderValue.value=0;
    _labelLap.text=@"";
    _lap.enabled=NO;
    _pause.enabled=NO;
    
}

- (IBAction)onPause:(id)sender {
    [timer invalidate];
    _stop.hidden=YES;
    _pause.hidden=NO;
    _start.hidden=NO;
}

- (IBAction)ChangeMode:(id)sender {
    //Changing mode to StopWatch
    _stop.hidden=YES;
    _pause.hidden=NO;
    _start.hidden=NO;
    _sliderValue.hidden=YES;
    _switcherLabel.text=@"StopWatch";
    _modeButton.hidden=YES;
    _modeButton2.hidden=NO;
    _timerFace.text=@"0:00:00.0";
    NumberCountdown=0;
    [timer invalidate];
    _sliderValue.value=0;
    _lap.hidden=NO;
    
}

- (IBAction)ChangeModetoTimer:(id)sender {
    //Changing mode to Timer
    _stop.hidden=YES;
    _pause.hidden=NO;
    _start.hidden=NO;
    _sliderValue.hidden=NO;
    _switcherLabel.text=@"Timer";
    //_timerFace.font=[UIFont fontWithName:@"AeroviasBrasilNF.ttf" size:100];
    _timerFace.text=@"SET TIME";
    _modeButton.hidden=NO;
    _modeButton2.hidden=YES;
    NumberCountdown=0;
    [timer invalidate];
    _lap.hidden=YES;
    _labelLap.text=@"";
    
}
- (IBAction)onPressLap:(id)sender {
    NSString *new=[NSString stringWithFormat:@"Lap %@ \r", _timerFace.text];
    _labelLap.text=[_labelLap.text stringByAppendingString:new];
    }


- (IBAction)sliding:(id)sender {
    //Setting value of slider and converting seconds to hh:mm:sec format
    _sliderValue.maximumValue=18000;
    _sliderValue.minimumValue=0;
    int sec=(int)(_sliderValue.value)%60;
    int min=(int)(_sliderValue.value/60)%60;
    int hours=(int)(_sliderValue.value)/3600;
    _timerFace.text=[NSString stringWithFormat:@"%d:%02d:%02d",hours, min, sec];
}
@end
