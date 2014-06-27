//
//  ViewController.h
//  ZL5
//
//  Created by Jesus Magana on 6/25/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProjectController.h"
#import "TweetController.h"
#import "ResumeController.h"

@interface ViewController : UIViewController <ProjectControllerDelegate, TweetControllerDelegate, ResumeControllerDelegate>
- (IBAction)webPage:(id)sender;

@end
