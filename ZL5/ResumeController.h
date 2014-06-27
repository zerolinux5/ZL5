//
//  ResumeController.h
//  ZL5
//
//  Created by Jesus Magana on 6/26/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ResumeController;

@protocol ResumeControllerDelegate <NSObject>
- (void)ResumeControllerDidBack:(ResumeController *) controller;
@end

@interface ResumeController : UIViewController

@property (nonatomic, weak) id <ResumeControllerDelegate> delegate;
- (IBAction)Back:(id)sender;

@end
