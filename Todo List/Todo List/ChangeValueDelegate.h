//
//  ChangeValueDelegate.h
//  Todo List
//
//  Created by Deb Bostjancic on 9/24/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ChangeValueDelegate <NSObject>


-(void)newValue:(NSString *)value;

@end
