//
//  ProjectController.h
//  ZL5
//
//  Created by Jesus Magana on 6/25/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ProjectController;

@protocol ProjectControllerDelegate <NSObject>
- (void)ProjectControllerDidBack:(ProjectController *) controller;
@end

@interface ProjectController : UITableViewController

@property (nonatomic, weak) id <ProjectControllerDelegate> delegate;

- (IBAction)Back:(id)sender;

@end
