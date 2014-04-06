//
//  ConnectViewController.m
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-15.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import "ConnectViewController.h"


@implementation ConnectViewController

// Properties
@synthesize titleBar;
@synthesize container;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set BG Colour
    self.view.backgroundColor = [UIColor colorWithRed:(242.0/255.0) green:(241.0/255.0) blue:(225.0/255.0) alpha:(255.0/255.0)];
    self.container.backgroundColor = [UIColor colorWithRed:(242.0/255.0) green:(241.0/255.0) blue:(225.0/255.0) alpha:(255.0/255.0)];
    
    // Set Title Label
    titleFont = [UIFont fontWithName:@"MetaOT-Medium" size:24.0];
    self.titleBar.font = titleFont;
    self.titleBar.textColor = [UIColor whiteColor];
    self.titleBar.backgroundColor = [UIColor colorWithRed:(126.0/255.0) green:(193.0/255.0) blue:(191.0/255.0) alpha:(255.0/255.0)];
    
    // Hide Connect Buttons
    self.connectFamilyButton.hidden = YES;
    
    // Hide Allied Buttons
    self.allied1.hidden = YES;
    self.allied2.hidden = YES;
    self.allied3.hidden = YES;
    self.alliedNew.hidden = YES;
    self.alliedSticks.hidden = YES;
    
    // Hide Nurse Buttons
    self.nurseSticks.hidden = YES;
    self.nurseNew.hidden = YES;
    self.nurse1.hidden = YES;
    self.nurse2.hidden = YES;

    // Hide Dr Buttons
    self.doctorSticks.hidden = YES;
    self.doctorNew.hidden = YES;
    self.doctor1.hidden = YES;
    self.doctor2.hidden = YES;
    
}



#pragma mark - Buttons


- (IBAction)pressedNurse:(id)sender {
    NSLog(@"Nurse == DOWN");
    [self moveView:@"DOWN" :200];
}

- (IBAction)pressedFamily:(id)sender {
    NSLog(@"Family == RIGHT");
    [self moveView:@"RIGHT" :200];
}

- (IBAction)pressedDoctor:(id)sender {
    NSLog(@"Doctor == UP");
    [self moveView:@"UP" :200];
}

- (IBAction)pressedAllied:(id)sender {
    NSLog(@"Allied == LEFT");
    [self moveView:@"LEFT" :200];
}



- (void)moveView:(NSString *)direction :(NSInteger)value {
    
    // Set Animation
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.3];
    [UIView setAnimationBeginsFromCurrentState:YES];
    
    // Get Frame
    CGRect rect = self.container.frame;
    
    // Test Direction
    if ([direction isEqualToString:@"UP"]) {
        NSLog(@"UP %f \t %f", rect.origin.y, rect.origin.x);
        if (rect.origin.y == 18 && rect.origin.x == 108) {
            rect.origin.y -= value;
            [self showDoctor:NO];
        }
        else if(rect.origin.y == -182 && rect.origin.x == 108) {
            rect.origin.y += value;
            [self showDoctor:YES];
        }
    }
    
    else if([direction isEqualToString:@"LEFT"]) {
        NSLog(@"LEFT %f", rect.origin.x);
        if (rect.origin.x == 108 && rect.origin.y == 18) {
            rect.origin.x += value;
            [self showAllied:NO];
        }
        else if (rect.origin.x == 308 && rect.origin.y == 18) {
            rect.origin.x -= value;
            [self showAllied:YES];
        }
    }
    
    else if([direction isEqualToString:@"DOWN"]) {
        NSLog(@"DOWN %f \t %f", rect.origin.y, rect.origin.x);
        if (rect.origin.y == 18 && rect.origin.x == 108) {
            rect.origin.y += value;
            [self showNurse:NO];
        }
        else if(rect.origin.y == 218 && rect.origin.x == 108) {
            rect.origin.y -= value;
            [self showNurse:YES];
        }
    }
    
    else if([direction isEqualToString:@"RIGHT"]) {
        NSLog(@"RIGHT %f \t %f", rect.origin.y, rect.origin.x);
        if (rect.origin.x == 108 && rect.origin.y == 18) {
            rect.origin.x -= value;
            [self showFamily:NO];
        }
        else if (rect.origin.x == -92 && rect.origin.y == 18) {
            rect.origin.x += value;
            [self showFamily:YES];
        }
        
    }
    
    self.container.frame = rect;
    [UIView commitAnimations];
    
}

- (void)showNurse:(BOOL)reset {
    
    if(reset) {
        [self.nurseButton setImage:[UIImage imageNamed:@"ConnectNurse@2x"] forState:UIControlStateNormal];
        self.nurseSticks.hidden = YES;
        self.nurseNew.hidden = YES;
        self.nurse1.hidden = YES;
        self.nurse2.hidden = YES;
    }
    else {
        [self.nurseButton setImage:[UIImage imageNamed:@"ConnectNurse_Selected@2x"] forState:UIControlStateNormal];
        self.nurseSticks.hidden = NO;
        self.nurseNew.hidden = NO;
        self.nurse1.hidden = NO;
        self.nurse2.hidden = NO;
    }
    
    [self.familyButton setImage:[UIImage imageNamed:@"ConnectFamily@2x"] forState:UIControlStateNormal];
    [self.doctorButton setImage:[UIImage imageNamed:@"ConnectDoctor@2x"] forState:UIControlStateNormal];
    [self.alliedButton setImage:[UIImage imageNamed:@"ConnectAllied@2x"] forState:UIControlStateNormal];
    
}

- (void)showFamily:(BOOL)reset {
    
    if(reset) {
        [self.familyButton setImage:[UIImage imageNamed:@"ConnectFamily@2x"] forState:UIControlStateNormal];
        self.connectFamilyButton.hidden = YES;
    }
    else {
        [self.familyButton setImage:[UIImage imageNamed:@"ConnectFamily_Selected@2x"] forState:UIControlStateNormal];
        self.connectFamilyButton.hidden = NO;
    }
    
    [self.nurseButton setImage:[UIImage imageNamed:@"ConnectNurse@2x"] forState:UIControlStateNormal];
    [self.doctorButton setImage:[UIImage imageNamed:@"ConnectDoctor@2x"] forState:UIControlStateNormal];
    [self.alliedButton setImage:[UIImage imageNamed:@"ConnectAllied@2x"] forState:UIControlStateNormal];
    
    

}


- (void)showDoctor:(BOOL)reset {
    
    if(reset) {
        [self.doctorButton setImage:[UIImage imageNamed:@"ConnectDoctor@2x"] forState:UIControlStateNormal];
        self.doctorSticks.hidden = YES;
        self.doctorNew.hidden = YES;
        self.doctor1.hidden = YES;
        self.doctor2.hidden = YES;
    }
    else {
        [self.doctorButton setImage:[UIImage imageNamed:@"ConnectDoctor_Selected@2x"] forState:UIControlStateNormal];
        self.doctorSticks.hidden = NO;
        self.doctorNew.hidden = NO;
        self.doctor1.hidden = NO;
        self.doctor2.hidden = NO;
    }
    
    [self.nurseButton setImage:[UIImage imageNamed:@"ConnectNurse@2x"] forState:UIControlStateNormal];
    [self.familyButton setImage:[UIImage imageNamed:@"ConnectFamily@2x"] forState:UIControlStateNormal];
    [self.alliedButton setImage:[UIImage imageNamed:@"ConnectAllied@2x"] forState:UIControlStateNormal];
}

- (void)showAllied:(BOOL)reset {
    
    if(reset) {
        [self.alliedButton setImage:[UIImage imageNamed:@"ConnectAllied@2x"] forState:UIControlStateNormal];
        self.allied1.hidden = YES;
        self.allied2.hidden = YES;
        self.allied3.hidden = YES;
        self.alliedNew.hidden = YES;
        self.alliedSticks.hidden = YES;
    }
    else {
        [self.alliedButton setImage:[UIImage imageNamed:@"ConnectAllied_Selected@2x"] forState:UIControlStateNormal];
        self.allied1.hidden = NO;
        self.allied2.hidden = NO;
        self.allied3.hidden = NO;
        self.alliedNew.hidden = NO;
        self.alliedSticks.hidden = NO;
    }
    
    [self.nurseButton setImage:[UIImage imageNamed:@"ConnectNurse@2x"] forState:UIControlStateNormal];
    [self.familyButton setImage:[UIImage imageNamed:@"ConnectFamily@2x"] forState:UIControlStateNormal];
    [self.doctorButton setImage:[UIImage imageNamed:@"ConnectDoctor@2x"] forState:UIControlStateNormal];
    
}


@end
