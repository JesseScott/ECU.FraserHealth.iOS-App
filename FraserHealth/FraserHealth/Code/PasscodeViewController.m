//
//  PasscodeViewController.m
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-06.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import "PasscodeViewController.h"



@implementation PasscodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set BG Colour
    self.view.backgroundColor = [UIColor colorWithRed:242.0/255.0 green:241.0/255/0 blue:225.0/255.0 alpha:255.0/255.0];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancel:(id)sender {
    NSLog(@"Cancel");
    [self dismissViewControllerAnimated:YES completion:NULL];
    
}


@end
