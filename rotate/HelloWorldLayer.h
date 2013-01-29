//
//  HelloWorldLayer.h
//  rotate
//
//  Created by yi yin on 13-1-29.
//  Copyright snda 2013年. All rights reserved.
//


// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"

// HelloWorldLayer
@interface HelloWorldLayer : CCLayer
{
    int angle;
}

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

@end
