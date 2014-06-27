//
//  ViewController.m
//  ZL5
//
//  Created by Jesus Magana on 6/25/14.
//  Copyright (c) 2014 ZeroLinux5. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)webPage:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://zerolinux5.com/#/"]];
}

#pragma mark - ProjectControllerDidBack and TweetControllerDidBack and ResumeControllerDidBack

- (void)ProjectControllerDidBack:(ProjectController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)TweetControllerDidBack:(TweetController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)ResumeControllerDidBack:(ResumeController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"projects"]) {
        
        UINavigationController *navigationController = segue.destinationViewController;
        ProjectController *projectController = [navigationController viewControllers][0];
        projectController.delegate = self;
    } else if ([segue.identifier isEqualToString:@"tweet"]) {
        
        UINavigationController *navigationController = segue.destinationViewController;
        ProjectController *projectController = [navigationController viewControllers][0];
        projectController.delegate = self;
    } else if ([segue.identifier isEqualToString:@"resume"]) {
        
        UINavigationController *navigationController = segue.destinationViewController;
        ProjectController *projectController = [navigationController viewControllers][0];
        projectController.delegate = self;
    }
}

@end
