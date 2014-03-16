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

@synthesize mainTitle, subTitle;



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set BG Colour
    self.view.backgroundColor = [UIColor colorWithRed:242.0/255.0 green:241.0/255/0 blue:225.0/255.0 alpha:255.0/255.0];
    
    // Set Fonts
    mainTitleFont = [UIFont fontWithName:@"MetaOT-BoldItalic" size:48.0];
    subTitleFont = [UIFont fontWithName:@"MetaOT-BoldItalic" size:24.0];
    
    // Set Labels
    mainTitle.textColor = [UIColor whiteColor];
    mainTitle.font = mainTitleFont;
    
    subTitle.textColor = [UIColor colorWithRed:126.0/255.0 green:193.0/255/0 blue:191.0/255.0 alpha:255.0/255.0];
    subTitle.font = subTitleFont;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark TEXTFIELD

// Hide Keyboard When Done Key Is Pressed
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSLog(@"TSR");
    [textField resignFirstResponder];
    return YES;
}


@end
