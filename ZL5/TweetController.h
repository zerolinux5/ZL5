//
//  TweetController.h
//  ZL5
//
//  Created by Jesus Magana on 6/25/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TweetController;

@protocol TweetControllerDelegate <NSObject>
- (void)TweetControllerDidBack:(TweetController *) controller;
@end

@interface TweetController : UIViewController <UITextViewDelegate>
@property (nonatomic, weak) id <TweetControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextView *tweetTextBody;
- (IBAction)sendTweet:(id)sender;
- (IBAction)Back:(id)sender;

@end
