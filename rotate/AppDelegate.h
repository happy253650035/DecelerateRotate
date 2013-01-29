//
//  AppDelegate.h
//  rotate
//
//  Created by yi yin on 13-1-29.
//  Copyright snda 2013年. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface AppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow			*window;
	RootViewController	*viewController;
}

@property (nonatomic, retain) UIWindow *window;

@end
