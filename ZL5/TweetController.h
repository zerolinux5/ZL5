//
//  TweetController.h
//  ZL5
//
//  Created by Jesus Magana on 6/25/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TweetController : UIViewController <UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextView *tweetTextBody;
- (IBAction)sendTweet:(id)sender;

@end
