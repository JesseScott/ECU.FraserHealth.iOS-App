//
//  TimelineCheckinViewController.m
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-23.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import "TimelineCheckinViewController.h"



@implementation TimelineCheckinViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set BG Colour
    self.view.backgroundColor = [UIColor colorWithRed:(242.0/255.0) green:(241.0/255.0) blue:(225.0/255.0) alpha:(255.0/255.0)];
    
    // Set Title Label
    mainFont = [UIFont fontWithName:@"MetaOT-Medium" size:24.0];
    self.staticLabel.font = mainFont;
    self.dynamicLabel.font = mainFont;

    
}

- (IBAction)sliderChanged:(id)sender {
    self.dynamicLabel.text = [NSString stringWithFormat:@"%.0f", self.slider.value];
}

- (IBAction)face1:(id)sender {
    [self.face1Button setImage:[UIImage imageNamed:@"Checkin_Mood1Red.png"] forState:UIControlStateNormal];
    [self.face2Button setImage:[UIImage imageNamed:@"Checkin_Mood2.png"] forState:UIControlStateNormal];
    [self.face3Button setImage:[UIImage imageNamed:@"Checkin_Mood3.png"] forState:UIControlStateNormal];
    [self.face4Button setImage:[UIImage imageNamed:@"Checkin_Mood4.png"] forState:UIControlStateNormal];
    [self.face5Button setImage:[UIImage imageNamed:@"Checkin_Mood5.png"] forState:UIControlStateNormal];
}

- (IBAction)face2:(id)sender {
    [self.face1Button setImage:[UIImage imageNamed:@"Checkin_Mood1.png"] forState:UIControlStateNormal];
    [self.face2Button setImage:[UIImage imageNamed:@"Checkin_Mood2Red.png"] forState:UIControlStateNormal];
    [self.face3Button setImage:[UIImage imageNamed:@"Checkin_Mood3.png"] forState:UIControlStateNormal];
    [self.face4Button setImage:[UIImage imageNamed:@"Checkin_Mood4.png"] forState:UIControlStateNormal];
    [self.face5Button setImage:[UIImage imageNamed:@"Checkin_Mood5.png"] forState:UIControlStateNormal];}

- (IBAction)face3:(id)sender {
    [self.face1Button setImage:[UIImage imageNamed:@"Checkin_Mood1.png"] forState:UIControlStateNormal];
    [self.face2Button setImage:[UIImage imageNamed:@"Checkin_Mood2.png"] forState:UIControlStateNormal];
    [self.face3Button setImage:[UIImage imageNamed:@"Checkin_Mood3Red.png"] forState:UIControlStateNormal];
    [self.face4Button setImage:[UIImage imageNamed:@"Checkin_Mood4.png"] forState:UIControlStateNormal];
    [self.face5Button setImage:[UIImage imageNamed:@"Checkin_Mood5.png"] forState:UIControlStateNormal];}

- (IBAction)face4:(id)sender {
    [self.face1Button setImage:[UIImage imageNamed:@"Checkin_Mood1.png"] forState:UIControlStateNormal];
    [self.face2Button setImage:[UIImage imageNamed:@"Checkin_Mood2.png"] forState:UIControlStateNormal];
    [self.face3Button setImage:[UIImage imageNamed:@"Checkin_Mood3.png"] forState:UIControlStateNormal];
    [self.face4Button setImage:[UIImage imageNamed:@"Checkin_Mood4Red.png"] forState:UIControlStateNormal];
    [self.face5Button setImage:[UIImage imageNamed:@"Checkin_Mood5.png"] forState:UIControlStateNormal];}

- (IBAction)face5:(id)sender {
    [self.face1Button setImage:[UIImage imageNamed:@"Checkin_Mood1.png"] forState:UIControlStateNormal];
    [self.face2Button setImage:[UIImage imageNamed:@"Checkin_Mood2.png"] forState:UIControlStateNormal];
    [self.face3Button setImage:[UIImage imageNamed:@"Checkin_Mood3.png"] forState:UIControlStateNormal];
    [self.face4Button setImage:[UIImage imageNamed:@"Checkin_Mood4.png"] forState:UIControlStateNormal];
    [self.face5Button setImage:[UIImage imageNamed:@"Checkin_Mood5Red.png"] forState:UIControlStateNormal];}


@end
