//
//  TimelineViewController.m
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-15.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import "TimelineViewController.h"



@implementation TimelineViewController


// Properties
@synthesize titleBar;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"VDL");
    
    // Set BG Colour
    self.view.backgroundColor = [UIColor colorWithRed:(242.0/255.0) green:(241.0/255.0) blue:(225.0/255.0) alpha:(255.0/255.0)];
    
    // Set Title Label
    titleFont = [UIFont fontWithName:@"MetaOT-Medium" size:24.0];
    self.titleBar.font = titleFont;
    self.titleBar.textColor = [UIColor whiteColor];
    self.titleBar.backgroundColor = [UIColor colorWithRed:(126.0/255.0) green:(193.0/255.0) blue:(191.0/255.0) alpha:(255.0/255.0)];
    
    
}

- (void) makeGoalVisible {
    NSLog(@"GOAL");
    
    UIImageView *goal = [[UIImageView alloc] initWithFrame:CGRectMake(906, 442, 61, 93)];
    goal.image = [UIImage imageNamed:@"goalIndicator@2x.png"];
    
    [self.view addSubview:goal];
    
}

- (void) makeNoteVisible {
    NSLog(@"NOTE");
    
    UIImageView *note = [[UIImageView alloc] initWithFrame:CGRectMake(389, 442, 61, 93)];
    note.image = [UIImage imageNamed:@"noteIndicator@2x.png"];
    
    [self.view addSubview:note];
    
}



@end
