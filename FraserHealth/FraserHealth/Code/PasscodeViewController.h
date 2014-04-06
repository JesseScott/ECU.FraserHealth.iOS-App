//
//  PasscodeViewController.h
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-06.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PasscodeViewController : UIViewController {
    
    NSInteger numberOfButtonsPressed;
    
}

// Properties
@property (weak, nonatomic) IBOutlet UIImageView *dot1;
@property (weak, nonatomic) IBOutlet UIImageView *dot2;
@property (weak, nonatomic) IBOutlet UIImageView *dot3;
@property (weak, nonatomic) IBOutlet UIImageView *dot4;



// Methods

- (IBAction)cancel:(id)sender;
- (IBAction)buttonPressed:(id)sender;


@end
