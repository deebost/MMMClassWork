//
//  DBViewController.m
//  Blocks
//
//  Created by Deb Bostjancic on 10/1/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBViewController.h"

typedef int (^mathType)(int,int);

@interface DBViewController ()

@end



@implementation DBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



- (IBAction)addNumbersOnPress:(UIButton *)sender {
    
    
    mathType addNumbers = ^(int numberOne, int numberTwo)
    {
        return numberOne + numberTwo;
    
    };
    
    mathType subtractNumbers = ^(int numberOne, int numberTwo)
    {
        return numberOne - numberTwo;
    };
    mathType block = nil;
    
    if (sender == _minusButton) {
        block = subtractNumbers;
    }else {
        block = addNumbers;
    }
    

    
    int result = [self doMathWithNumber:_firstNumberTextField.text.integerValue otherNumber: _secondNumberTextField.text.integerValue withBlock:block];
    _reultLabel.text = [NSString stringWithFormat:@"%i", result];
}

-(int) doMathWithNumber:(int)numberOne otherNumber:(int)numberTwo withBlock:(mathType)block{
    return block (numberOne, numberTwo);
}
    
@end
