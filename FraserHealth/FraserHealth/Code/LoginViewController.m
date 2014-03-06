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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view.
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
