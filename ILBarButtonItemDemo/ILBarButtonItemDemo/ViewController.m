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
    ILBarButtonItem *leftBtn =
        [ILBarButtonItem barItemWithImage:[UIImage imageNamed:@"gear.png"]
                            selectedImage:[UIImage imageNamed:@"gearSelected.png"]
                                   target:self
                                   action:@selector(leftTapped:)];
    
    self.navigationItem.leftBarButtonItem = leftBtn;

    /* Right bar button item */
    ILBarButtonItem *rightBtn =
        [ILBarButtonItem barItemWithTitle:@"Start"
                               themeColor:[UIColor whiteColor]
                                   target:self
                                   action:@selector(rightTapped:)];
    
    self.navigationItem.rightBarButtonItem = rightBtn;
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
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Right button tapped"
                                                    message:nil
                                                   delegate:self
                                          cancelButtonTitle:@"Great!"
                                          otherButtonTitles:nil];
	[alert show];
}

@end
