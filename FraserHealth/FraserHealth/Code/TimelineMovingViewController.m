//
//  TimelineMovingViewController.m
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-30.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import "TimelineMovingViewController.h"


@implementation TimelineMovingViewController



- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark TEXTFIELD

// Hide Keyboard When Done Key Is Pressed
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSLog(@"TSR");
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)pressedCancel:(id)sender {
    NSLog(@"CANCEL");
    
    [self performSegueWithIdentifier:@"setNote" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"PREP");
    
    TimelineViewController *time = [segue destinationViewController];
    [time makeNoteVisible];
}

@end
