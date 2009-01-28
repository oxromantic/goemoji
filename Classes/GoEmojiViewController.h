//
//  GoEmojiViewController.h
//  GoEmoji
//
//  Created by Michael Glass on 1/27/09.
//  Copyright Pocket Sevens 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GoEmojiViewController : UIViewController {
	IBOutlet UISwitch *emojiSwitch;
}

- (void)valueChanged:(id)sender;

@end

