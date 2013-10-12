//
//  MMStartup.h
//  Startup
//
//  Created by Kyle Mai on 9/19/13.
//  Copyright (c) 2013 Kyle Mai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MMEmployee.h"

@interface MMStartup : NSObject
{


}

//@property (strong, nonatomic) MMEmployee *Boss;
//@property (strong, nonatomic) MMEmployee *Manager;
//@property (strong, nonatomic) MMEmployee *Coder;
//@property (strong, nonatomic) MMEmployee *Designer;

@property (strong, nonatomic) NSMutableArray *bossArray;
@property (strong, nonatomic) NSMutableArray *managerArray;
@property (strong, nonatomic) NSMutableArray *coderArray;
@property (strong, nonatomic) NSMutableArray *designerArray;

- (id)init;
- (void)addEmployee:(MMEmployee *)employee;

//@property (strong, nonatomic) NSString *boss;
//@property (strong, nonatomic) NSString *coder;
//@property (strong, nonatomic) NSString *projectManager;
//@property (strong, nonatomic) NSString *designer;


@end
