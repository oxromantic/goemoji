//
//  GoEmojiAppDelegate.h
//  GoEmoji
//
//  Created by Michael Glass on 1/27/09.
//  Copyright Pocket Sevens 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GoEmojiViewController;

@interface GoEmojiAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    GoEmojiViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet GoEmojiViewController *viewController;

@end

