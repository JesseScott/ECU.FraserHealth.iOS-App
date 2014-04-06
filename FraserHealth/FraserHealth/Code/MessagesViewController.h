//
//  MessagesViewController.h
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-15.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MessagesViewController : UIViewController <UITextFieldDelegate> {
    
    UIFont *titleFont;
    
}

// Properties
@property (weak, nonatomic) IBOutlet UILabel *titleBar;

@property (weak, nonatomic) IBOutlet UIButton *nuMessageButton;
@property (weak, nonatomic) IBOutlet UIButton *nurseButton;
@property (weak, nonatomic) IBOutlet UIButton *smartboardButton;
@property (weak, nonatomic) IBOutlet UIButton *friendButton;
@property (weak, nonatomic) IBOutlet UIImageView *messageView;



// Methods

- (IBAction)pressedNewMessage:(id)sender;
- (IBAction)pressedNurse:(id)sender;
- (IBAction)pressedSmartboard:(id)sender;
- (IBAction)pressedFriend:(id)sender;



@end
