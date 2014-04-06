//
//  CalendarMedicationViewController.m
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-30.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import "CalendarMedicationViewController.h"



@implementation CalendarMedicationViewController

@synthesize foregroundImage;


- (void)viewDidLoad {
    [super viewDidLoad];
  
    screenState = 0;
    
}


- (IBAction)pressedDone:(id)sender {
    NSLog(@"pressedDone");
    
    if(screenState == 0) {
        [self performSegueWithIdentifier:@"doneMedication" sender:self];
    }
    else if(screenState == 1) {
        [self.foregroundImage setImage:[UIImage imageNamed:@"Calendar_Med1.png"]];
        screenState = 0;
    }
    else if(screenState == 2) {
        [self.foregroundImage setImage:[UIImage imageNamed:@"Calendar_Med1.png"]];
        screenState = 0;
    }
    
}

- (IBAction)pressedMed1:(id)sender {
    NSLog(@"pressedMed1");
    
    screenState = 1;
    
    // Set FG
    [self.foregroundImage setImage:[UIImage imageNamed:@"Calendar_Med2.png"]];
}

- (IBAction)pressedMed2:(id)sender {
    NSLog(@"pressedMed2");
    
    screenState = 2;
    
    // Set FG
    [self.foregroundImage setImage:[UIImage imageNamed:@"Calendar_Med3.png"]];
}


@end
