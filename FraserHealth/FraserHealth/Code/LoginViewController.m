//
//  LoginViewController.m
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-06.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import "LoginViewController.h"


@implementation LoginViewController

// Properties

@synthesize buttonPopoverController;



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set BG Colour
    self.view.backgroundColor = [UIColor colorWithRed:242.0/255.0 green:241.0/255/0 blue:225.0/255.0 alpha:255.0/255.0];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)setPasscode:(id)sender {
    NSLog(@"setPasscode");
    
    PasscodeViewController* passcode = [[PasscodeViewController alloc] init];
    self.buttonPopoverController = [[UIPopoverController alloc] initWithContentViewController:passcode];
    self.buttonPopoverController.delegate = self;
    
    CGRect frame = ((UIButton*)sender).frame;
    [self.buttonPopoverController presentPopoverFromRect:frame
                                                  inView:self.view
                                permittedArrowDirections:UIPopoverArrowDirectionAny
                                              animated:YES];
   
}


@end
