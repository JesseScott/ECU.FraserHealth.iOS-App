//
//  MapViewController.m
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-19.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import "MapViewController.h"



@implementation MapViewController

// Properties
@synthesize titleBar;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set BG Colour
    self.view.backgroundColor = [UIColor colorWithRed:(242.0/255.0) green:(241.0/255.0) blue:(225.0/255.0) alpha:(255.0/255.0)];
    
    // Set Title Label
    titleFont = [UIFont fontWithName:@"MetaOT-Medium" size:24.0];
    self.titleBar.font = titleFont;
    self.titleBar.textColor = [UIColor whiteColor];
    self.titleBar.backgroundColor = [UIColor colorWithRed:(126.0/255.0) green:(193.0/255.0) blue:(191.0/255.0) alpha:(255.0/255.0)];
    
    // Hide Buttons
    self.foodLabel.hidden = YES;
    self.timsButton.hidden = YES;
    self.cafeteriaButton.hidden = YES;
    self.vendingButton.hidden = YES;
    
}

#pragma mark TEXTFIELD

// Hide Keyboard When Done Key Is Pressed
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSLog(@"TSR");
    [textField resignFirstResponder];
    if ([self.searchResult.text isEqualToString:@"food"]) {
        NSLog(@"EQUAL");
        // Show Buttons
        self.foodLabel.hidden = NO;
        self.timsButton.hidden = NO;
        self.cafeteriaButton.hidden = NO;
        self.vendingButton.hidden = NO;
    }
    return YES;
}



#pragma mark BUTTONS


- (IBAction)pressedTimsButton:(id)sender {
    self.mapImage.image = [UIImage imageNamed:@"one@2x"];
    
    UIImage *tim = [UIImage imageNamed:@"Selected_Tims"];
    [self.timsButton setImage:tim forState:UIControlStateNormal];
    
    UIImage *caf = [UIImage imageNamed:@"Cafeteria"];
    [self.cafeteriaButton setImage:caf forState:UIControlStateNormal];
    
    UIImage *ven = [UIImage imageNamed:@"VendingMachines"];
    [self.vendingButton setImage:ven forState:UIControlStateNormal];
}

- (IBAction)pressedCafeteriaButton:(id)sender {
    self.mapImage.image = [UIImage imageNamed:@"two@2x"];
    
    UIImage *caf = [UIImage imageNamed:@"Selected_Cafeteria"];
    [self.cafeteriaButton setImage:caf forState:UIControlStateNormal];
    
    UIImage *tim = [UIImage imageNamed:@"Tims"];
    [self.timsButton setImage:tim forState:UIControlStateNormal];
    
    UIImage *ven = [UIImage imageNamed:@"VendingMachines"];
    [self.vendingButton setImage:ven forState:UIControlStateNormal];
}

- (IBAction)pressedVendingButton:(id)sender {
    self.mapImage.image = [UIImage imageNamed:@"three@2x"];
    
    UIImage *ven = [UIImage imageNamed:@"Selected_VendingMachines"];
    [self.vendingButton setImage:ven forState:UIControlStateNormal];
    
    UIImage *tim = [UIImage imageNamed:@"Tims"];
    [self.timsButton setImage:tim forState:UIControlStateNormal];
    
    UIImage *caf = [UIImage imageNamed:@"Cafeteria"];
    [self.cafeteriaButton setImage:caf forState:UIControlStateNormal];
}


@end
