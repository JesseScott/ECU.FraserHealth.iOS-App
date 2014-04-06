//
//  PasscodeViewController.m
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-06.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import "PasscodeViewController.h"



@implementation PasscodeViewController

// Properties

@synthesize dot1, dot2, dot3, dot4;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set BG Colour
    self.view.backgroundColor = [UIColor colorWithRed:(242.0/255.0) green:(241.0/255.0) blue:(225.0/255.0) alpha:(255.0/255.0)];
    
    numberOfButtonsPressed = 0;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancel:(id)sender {
    NSLog(@"Cancel");
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}

- (IBAction)buttonPressed:(id)sender {
    NSLog(@"buttonPressed");
    
    numberOfButtonsPressed++;
    
    if(numberOfButtonsPressed == 1) {
        self.dot1.image = [UIImage imageNamed:@"PasscodeDot_Fill@2x"];
    }
    if(numberOfButtonsPressed == 2) {
        self.dot2.image = [UIImage imageNamed:@"PasscodeDot_Fill@2x"];
    }
    if(numberOfButtonsPressed == 3) {
        self.dot3.image = [UIImage imageNamed:@"PasscodeDot_Fill@2x"];
    }
    if(numberOfButtonsPressed == 4) {
        self.dot4.image = [UIImage imageNamed:@"PasscodeDot_Fill@2x"];
    }
}


@end
