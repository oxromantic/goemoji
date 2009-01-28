//
//  GoEmojiViewController.m
//  GoEmoji
//
//  Created by Michael Glass on 1/27/09.
//  Copyright Pocket Sevens 2009. All rights reserved.
//	
//	Code to make this whole thing work blatently stolen from
//	http://www.applecow.com/2008/11/29/iphone-dev-program-sdk-emoji-quelli-veri/

#import "GoEmojiViewController.h"

#define kPreferencesPlistPath @"/private/var/mobile/Library/Preferences/com.apple.Preferences.plist"

@implementation GoEmojiViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	NSDictionary *plistDict = [[NSDictionary alloc] initWithContentsOfFile:kPreferencesPlistPath];
	NSNumber *emojiValue = [plistDict objectForKey:@"KeyboardEmojiEverywhere"];
	if (emojiValue)		//value might not exist yet
		[emojiSwitch setOn:[emojiValue boolValue]];
	else
		[emojiSwitch setOn:NO];
	[plistDict release];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [super dealloc];
}

- (void)valueChanged:(id)sender
{
	NSMutableDictionary* plistDict = [[NSMutableDictionary alloc] initWithContentsOfFile:kPreferencesPlistPath];
	[plistDict setValue:[NSNumber numberWithBool:emojiSwitch.on] forKey:@"KeyboardEmojiEverywhere"];
	[plistDict writeToFile:kPreferencesPlistPath atomically:NO];
	[plistDict release];
}

@end
