//
//  GoEmojiAppDelegate.m
//  GoEmoji
//
//  Created by Michael Glass on 1/27/09.
//  Copyright Pocket Sevens 2009. All rights reserved.
//

#import "GoEmojiAppDelegate.h"
#import "GoEmojiViewController.h"

@implementation GoEmojiAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
