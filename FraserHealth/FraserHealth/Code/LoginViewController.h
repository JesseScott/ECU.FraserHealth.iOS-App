//
//  LoginViewController.h
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-06.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PasscodeViewController.h"

@interface LoginViewController : UIViewController <UIPopoverControllerDelegate> {
    
}

// Properties

@property (nonatomic, strong) UIPopoverController* buttonPopoverController;

// Methods

- (IBAction)setPasscode:(id)sender;


@end
