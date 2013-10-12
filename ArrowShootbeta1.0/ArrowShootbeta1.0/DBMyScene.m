//
//  DBMyScene.m
//  ArrowShootbeta1.0
//
//  Created by Daniel Bostjancic on 10/11/13.
//  Copyright (c) 2013 deebost. All rights reserved.
//

#import "DBMyScene.h"

@implementation DBMyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
        
        SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        
        myLabel.text = @"Hello, World!";
        myLabel.color = [UIColor magentaColor];
        myLabel.blendMode = 10;
        myLabel.fontSize = 12;
        myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                       CGRectGetMidY(self.frame));
        
        [self addChild:myLabel];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        sprite.position = location;
        
        SKAction *moveUp = [SKAction moveByX: 0 y: 300.0 duration: 1.5];
        SKAction *zoom = [SKAction scaleTo: -1.0 duration: 1.5];
        SKAction *pause = [SKAction waitForDuration: .5];
        
        
        SKAction *turnAround = [SKAction rotateByAngle:M_PI_4 duration:.1];
        SKAction *pause2 = [SKAction waitForDuration:.3];
        SKAction *flip = [SKAction moveToY: -400 duration:.5];
        SKAction *fadeAway = [SKAction fadeOutWithDuration: 0.95];
        SKAction *remove = [SKAction removeFromParent];
        SKAction *moveSequence = [SKAction sequence:@[zoom, moveUp, zoom, pause, turnAround, pause2, flip, fadeAway, remove]];
        
        [sprite runAction:[SKAction repeatActionForever:moveSequence]];
        
        [self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
