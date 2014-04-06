//
//  MessagesViewController.m
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-15.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import "MessagesViewController.h"


@implementation MessagesViewController


// Properties
@synthesize titleBar;
@synthesize nuMessageButton, nurseButton, smartboardButton, friendButton;
@synthesize messageView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set BG Colour
    self.view.backgroundColor = [UIColor colorWithRed:(242.0/255.0) green:(241.0/255.0) blue:(225.0/255.0) alpha:(255.0/255.0)];
    
    // Set Title Label
    titleFont = [UIFont fontWithName:@"MetaOT-Medium" size:24.0];
    self.titleBar.font = titleFont;
    self.titleBar.textColor = [UIColor whiteColor];
    self.titleBar.backgroundColor = [UIColor colorWithRed:(126.0/255.0) green:(193.0/255.0) blue:(191.0/255.0) alpha:(255.0/255.0)];
    
    // Update Buttons
    UIImage *nu = [UIImage imageNamed:@"MessageNew"];
    [self.nuMessageButton setImage:nu forState:UIControlStateNormal];
    
    UIImage *nurse = [UIImage imageNamed:@"MessageNurse"];
    [self.nurseButton setImage:nurse forState:UIControlStateNormal];
    
    UIImage *smart = [UIImage imageNamed:@"MessageSmartboard"];
    [self.smartboardButton setImage:smart forState:UIControlStateNormal];
    
    UIImage *friend = [UIImage imageNamed:@"MessageFriend"];
    [self.friendButton setImage:friend forState:UIControlStateNormal];
    
    // Set Image BG
    [self.messageView setImage:[UIImage imageNamed:@"MessagesWindowDefault.png"]];
    

}

- (void)didReceiveMemoryWarning
{
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

#pragma mark BUTTONS

- (IBAction)pressedNewMessage:(id)sender {
    
    // Update Buttons
    UIImage *nu = [UIImage imageNamed:@"MessageNew_Selected"];
    [self.nuMessageButton setImage:nu forState:UIControlStateNormal];
    
    UIImage *nurse = [UIImage imageNamed:@"MessageNurse"];
    [self.nurseButton setImage:nurse forState:UIControlStateNormal];
    
    UIImage *smart = [UIImage imageNamed:@"MessageSmartboard"];
    [self.smartboardButton setImage:smart forState:UIControlStateNormal];
    
    UIImage *friend = [UIImage imageNamed:@"MessageFriend"];
    [self.friendButton setImage:friend forState:UIControlStateNormal];
    
    // Set Image BG
    [self.messageView setImage:[UIImage imageNamed:@"MessagesWindowNew.png"]];

}

- (IBAction)pressedNurse:(id)sender {
    
    // Update Buttons
    UIImage *nu = [UIImage imageNamed:@"MessageNew"];
    [self.nuMessageButton setImage:nu forState:UIControlStateNormal];
    
    UIImage *nurse = [UIImage imageNamed:@"MessageNurse_Selected"];
    [self.nurseButton setImage:nurse forState:UIControlStateNormal];
    
    UIImage *smart = [UIImage imageNamed:@"MessageSmartboard"];
    [self.smartboardButton setImage:smart forState:UIControlStateNormal];
    
    UIImage *friend = [UIImage imageNamed:@"MessageFriend"];
    [self.friendButton setImage:friend forState:UIControlStateNormal];
    
    // Set Image BG
    [self.messageView setImage:[UIImage imageNamed:@"MessagesWindowNurse.png"]];
    
}

- (IBAction)pressedSmartboard:(id)sender {
    
    // Update Buttons
    UIImage *nu = [UIImage imageNamed:@"MessageNew"];
    [self.nuMessageButton setImage:nu forState:UIControlStateNormal];
    
    UIImage *nurse = [UIImage imageNamed:@"MessageNurse"];
    [self.nurseButton setImage:nurse forState:UIControlStateNormal];
    
    UIImage *smart = [UIImage imageNamed:@"MessageSmartboard_Selected"];
    [self.smartboardButton setImage:smart forState:UIControlStateNormal];
    
    UIImage *friend = [UIImage imageNamed:@"MessageFriend"];
    [self.friendButton setImage:friend forState:UIControlStateNormal];
    
    // Set Image BG
    [self.messageView setImage:[UIImage imageNamed:@"MessagesWindowSmartboard.png"]];
    
}

- (IBAction)pressedFriend:(id)sender {
    
    // Update Buttons
    UIImage *nu = [UIImage imageNamed:@"MessageNew"];
    [self.nuMessageButton setImage:nu forState:UIControlStateNormal];
    
    UIImage *nurse = [UIImage imageNamed:@"MessageNurse"];
    [self.nurseButton setImage:nurse forState:UIControlStateNormal];
    
    UIImage *smart = [UIImage imageNamed:@"MessageSmartboard"];
    [self.smartboardButton setImage:smart forState:UIControlStateNormal];
    
    UIImage *friend = [UIImage imageNamed:@"MessageFriend_Selected"];
    [self.friendButton setImage:friend forState:UIControlStateNormal];
    
    // Set Image BG
    [self.messageView setImage:[UIImage imageNamed:@"MessagesWindowClaire.png"]];
    
}



@end
