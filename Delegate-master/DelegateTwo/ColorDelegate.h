//
//  ColorDelegate.h
//  DelegateTwo
//
//  Created by Cornelius Carroll on 9/23/13.
//  Copyright (c) 2013 Cornelius Carroll. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ColorDelegate <NSObject>
-(void)changeColor: (UIColor *)color;
-(void) changeText: (NSString*)text;

@end
