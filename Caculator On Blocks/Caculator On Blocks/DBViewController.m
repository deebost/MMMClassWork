//
//  DBViewController.m
//  Caculator On Blocks
//
//  Created by Deb Bostjancic on 10/1/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"
typedef int (^mathFunctions)(int,int);

@interface DBViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondNumberTextField;
@property (weak, nonatomic) IBOutlet UILabel *firstNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *secondNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *resultsLabel;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UIButton *subtractButton;
@property (weak, nonatomic) IBOutlet UIButton *timesButton;
@property (weak, nonatomic) IBOutlet UILabel *showMathFunctionType;
@property (weak, nonatomic) IBOutlet UIButton *divideButton;
- (IBAction)onPressShowsResults:(id)sender;
- (IBAction)sendFirstNumberToLabel:(id)sender;
- (IBAction)sendSecondNumberToLabel:(id)sender;


@end

@implementation DBViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
}



-(void)changeFirstTextFieldToFirstTextLable
{
    self.firstNumberLabel.text = _firstNumberTextField.text;
}

-(void)changeSecondTextFieldToSecondTextLable
{
    self.secondNumberLabel.text = _secondNumberTextField.text;
}

- (IBAction)onPressShowsResults:(id)sender {

        [self resignFirstResponder];

    mathFunctions addNumbers = ^(int numberOne, int numberTwo)
    {
        return numberOne + numberTwo;
    };
    mathFunctions subtractNumbers = ^(int numberOne, int numberTwo)
    {
        return numberOne - numberTwo;
    };
    mathFunctions timesNumber = ^(int numberOne, int numberTwo)
    {
        return numberOne * numberTwo;
    };
    mathFunctions divideNumber = ^(int numberOne, int numberTwo)
    {
        return ( numberOne / numberTwo);
    };
    mathFunctions block = nil;
    
    if (sender == _addButton) {
        block = addNumbers;
        _showMathFunctionType.text = [NSString stringWithFormat:@"Addition Results!"];
    }
     else if (sender == _subtractButton) {
        block = subtractNumbers;
                 _showMathFunctionType.text = [NSString stringWithFormat:@"Subtraction Results!"];
    }
     else if (sender == _timesButton) {
        block = timesNumber;
                 _showMathFunctionType.text = [NSString stringWithFormat:@"Times Results!"];
        
    }else
    {   block = divideNumber;
                _showMathFunctionType.text = [NSString stringWithFormat:@"Division Results!"];
}
    int result =[self doMathEquations:_firstNumberLabel.text.integerValue nextNumber:_secondNumberLabel.text.integerValue withBlock:block];
    _resultsLabel.text = [NSString stringWithFormat:@"%i", result];
}

-(int)doMathEquations:(int)numberOne nextNumber:(int)numberTwo withBlock:(mathFunctions)block{
    return block (numberOne, numberTwo);
}


- (IBAction)sendFirstNumberToLabel:(id)sender {
    [self changeFirstTextFieldToFirstTextLable];
        [self resignFirstResponder];
}

- (IBAction)sendSecondNumberToLabel:(id)sender {
    [self changeSecondTextFieldToSecondTextLable];
        [self resignFirstResponder];
}
@end
