//
//  LeaveFeedbackViewController.m
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-30.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import "LeaveFeedbackViewController.h"



@implementation LeaveFeedbackViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    numberOfButtonsPressed = 0;
    
    
}


- (IBAction)pressedHeart:(id)sender {
    numberOfButtonsPressed++;
    
    if(numberOfButtonsPressed == 1) {
        [self.heart1 setImage:[UIImage imageNamed:@"timelineBackgroundState03ModalHeartActivated@2x"] forState:UIControlStateNormal];
    }
    if(numberOfButtonsPressed == 2) {
      [self.heart2 setImage:[UIImage imageNamed:@"timelineBackgroundState03ModalHeartActivated@2x"] forState:UIControlStateNormal];
    }
    if(numberOfButtonsPressed == 3) {
      [self.heart3 setImage:[UIImage imageNamed:@"timelineBackgroundState03ModalHeartActivated@2x"] forState:UIControlStateNormal];
    }
    if(numberOfButtonsPressed == 4) {
      [self.heart4 setImage:[UIImage imageNamed:@"timelineBackgroundState03ModalHeartActivated@2x"] forState:UIControlStateNormal];
    }
    if(numberOfButtonsPressed == 5) {
        [self.heart5 setImage:[UIImage imageNamed:@"timelineBackgroundState03ModalHeartActivated@2x"] forState:UIControlStateNormal];
    }

}

#pragma mark TEXTFIELD

// Hide Keyboard When Done Key Is Pressed
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSLog(@"TSR");
    [textField resignFirstResponder];
    return YES;
}


@end
