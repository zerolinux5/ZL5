//
//  TweetController.m
//  ZL5
//
//  Created by Jesus Magana on 6/25/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import "TweetController.h"
#import "Social/Social.h"

@interface TweetController ()

@end

@implementation TweetController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tweetTextBody.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)sendTweet:(id)sender {
    NSLog(@"Post It Button Was Pressed!: %@", self.tweetTextBody.text);
    NSString *tweetText = [NSString stringWithFormat:@"%@ #ZeroLinux5", self.tweetTextBody.text];
    SLComposeViewController *composer = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    [composer setInitialText:tweetText];
    [self presentViewController:composer animated:YES completion:nil];
}

- (void)textViewDidBeginEditing:(UITextView *)textView
{
    if ([textView.text isEqualToString:@"<Your Message Here>"]) {
        textView.text = @"";
        textView.textColor = [UIColor blackColor]; //optional
    }
    [textView becomeFirstResponder];
}

- (void)textViewDidEndEditing:(UITextView *)textView
{
    if ([textView.text isEqualToString:@""]) {
        textView.text = @"<Your Message Here>";
        textView.textColor = [UIColor lightGrayColor]; //optional
    }
    [textView resignFirstResponder];
}

- (IBAction)Back:(id)sender {
    [self.delegate TweetControllerDidBack:self];
}

@end
