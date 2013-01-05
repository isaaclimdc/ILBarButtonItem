//
//  ViewController.m
//  ILBarButtonItemDemo
//
//  Created by Isaac Lim on 1/5/13.
//  Copyright (c) 2013 isaacl.net. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    /* Left bar button item */
    ILBarButtonItem *settingsBtn =
        [ILBarButtonItem barItemWithImage:[UIImage imageNamed:@"gear.png"]
                            selectedImage:[UIImage imageNamed:@"gearSelected.png"]
                                   target:self
                                   action:@selector(leftTapped:)];
    
    self.navigationItem.leftBarButtonItem = settingsBtn;

    /* Right bar button item */
    ILBarButtonItem *searchBtn =
        [ILBarButtonItem barItemWithImage:[UIImage imageNamed:@"search.png"]
                            selectedImage:[UIImage imageNamed:@"searchSelected.png"]
                                   target:self
                                   action:@selector(rightTapped:)];
    
    self.navigationItem.rightBarButtonItem = searchBtn;
}

- (IBAction)leftTapped:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Left button tapped"
                                                    message:nil
                                                   delegate:self
                                          cancelButtonTitle:@"Great!"
                                          otherButtonTitles:nil];
	[alert show];
}

- (IBAction)rightTapped:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Left button tapped"
                                                    message:nil
                                                   delegate:self
                                          cancelButtonTitle:@"Great!"
                                          otherButtonTitles:nil];
	[alert show];
}

@end
