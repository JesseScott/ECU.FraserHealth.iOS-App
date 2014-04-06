//
//  MapViewController.h
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-19.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MapViewController : UIViewController <UITextFieldDelegate> {
    UIFont *titleFont;
}

// Properties
@property (weak, nonatomic) IBOutlet UILabel *titleBar;
@property (weak, nonatomic) IBOutlet UIImageView *mapImage;
@property (weak, nonatomic) IBOutlet UITextField *searchResult;

@property (weak, nonatomic) IBOutlet UIImageView *foodLabel;
@property (weak, nonatomic) IBOutlet UIButton *timsButton;
@property (weak, nonatomic) IBOutlet UIButton *cafeteriaButton;
@property (weak, nonatomic) IBOutlet UIButton *vendingButton;

// Methods
- (IBAction)pressedTimsButton:(id)sender;
- (IBAction)pressedCafeteriaButton:(id)sender;
- (IBAction)pressedVendingButton:(id)sender;



@end
