//
//  HelloWorldLayer.m
//  rotate
//
//  Created by yi yin on 13-1-29.
//  Copyright snda 2013年. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"

// HelloWorldLayer implementation
@implementation HelloWorldLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {
		
        angle = 900;
		// create and initialize a Label
		CCLabelTTF *label = [CCLabelTTF labelWithString:@"Hello World" fontName:@"Marker Felt" fontSize:64];

		// ask director the the window size
		CGSize size = [[CCDirector sharedDirector] winSize];
	
		// position the label on the center of the screen
		label.position =  ccp( size.width /2 , size.height/2 );
		
		// add the label as a child to this Layer
		[self addChild: label];
        
        CCSprite* img = [CCSprite spriteWithFile:@"Icon-72.png"];
        [img setPosition:CGPointMake(size.width/2, size.height/2)];
        [self addChild:img z:1 tag:66];
        
        [self schedule:@selector(good) interval:0.5f];
	}
	return self;
}

-(void)good{
    CCSprite* img = (CCSprite*)[self getChildByTag:66];
    CCRotateBy* rotate = [CCRotateBy actionWithDuration:0.5f angle:angle];
    if (angle > 0) {
        angle -= 20;
    }else {
        angle = 900;
    }
    [img runAction:rotate];
    NSLog(@"good");
    
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}
@end
