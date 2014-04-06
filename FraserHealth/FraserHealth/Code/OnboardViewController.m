//
//  OnboardViewController.m
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-15.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import "OnboardViewController.h"


@implementation OnboardViewController

@synthesize leftSwipe, rightSwipe, foregroundImage;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set BG Colour
    self.view.backgroundColor = [UIColor colorWithRed:(242.0/255.0) green:(241.0/255.0) blue:(225.0/255.0) alpha:(255.0/255.0)];
    
    // Images
    onboardImages = [NSArray arrayWithObjects:
                     [UIImage imageNamed:@"Onboard1.png"],
                     [UIImage imageNamed:@"Onboard2.png"],
                     [UIImage imageNamed:@"Onboard3.png"],
                     [UIImage imageNamed:@"Onboard4.png"],
                     nil];
    
    index = 0;
    
    // Add Swipe Detection
    self.leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:self.leftSwipe];
    self.rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:self.rightSwipe];
    
    // Set FG Image
    [self.foregroundImage setImage:[onboardImages objectAtIndex:index]];
    
}




- (IBAction)swipedLeft:(id)sender {
    NSLog(@"Swiped Left");
    
    // Increment Count
    if(index < 3) {
        index++;
    }
    
    // Set FG Image
    [self.foregroundImage setImage:[onboardImages objectAtIndex:index]];

}

- (IBAction)swipedRight:(id)sender {
    NSLog(@"Swiped Right");

    // Increment Count
    if(index > 0) {
        index--;
    }
    
    // Set FG Image
    [self.foregroundImage setImage:[onboardImages objectAtIndex:index]];
}

- (IBAction)pressedDone:(id)sender {
    NSLog(@"pressedDone");
    
    // Segue ?
    if (index == 3) {
        [self performSegueWithIdentifier:@"doneOnboarding" sender:self];
    }
    
}


@end
