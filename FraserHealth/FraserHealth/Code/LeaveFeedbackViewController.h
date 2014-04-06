//
//  LeaveFeedbackViewController.h
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-30.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeaveFeedbackViewController : UIViewController <UITextFieldDelegate> {
    
    NSInteger numberOfButtonsPressed;
}

// Properties
@property (weak, nonatomic) IBOutlet UIButton *heart1;
@property (weak, nonatomic) IBOutlet UIButton *heart2;
@property (weak, nonatomic) IBOutlet UIButton *heart3;
@property (weak, nonatomic) IBOutlet UIButton *heart4;
@property (weak, nonatomic) IBOutlet UIButton *heart5;


// Methods
- (IBAction)pressedHeart:(id)sender;


@end
