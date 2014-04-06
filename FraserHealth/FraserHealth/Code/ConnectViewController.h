//
//  ConnectViewController.h
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-15.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConnectViewController : UIViewController {
    
    UIFont *titleFont;
    
}

// Properties
@property (weak, nonatomic) IBOutlet UILabel *titleBar;
@property (weak, nonatomic) IBOutlet UIView *container;

@property (weak, nonatomic) IBOutlet UIButton *nurseButton;
@property (weak, nonatomic) IBOutlet UIButton *familyButton;
@property (weak, nonatomic) IBOutlet UIButton *doctorButton;
@property (weak, nonatomic) IBOutlet UIButton *alliedButton;

@property (weak, nonatomic) IBOutlet UIButton *connectFamilyButton;

@property (weak, nonatomic) IBOutlet UIButton *allied1;
@property (weak, nonatomic) IBOutlet UIButton *allied2;
@property (weak, nonatomic) IBOutlet UIButton *allied3;
@property (weak, nonatomic) IBOutlet UIButton *alliedNew;
@property (weak, nonatomic) IBOutlet UIImageView *alliedSticks;

@property (weak, nonatomic) IBOutlet UIImageView *doctorSticks;
@property (weak, nonatomic) IBOutlet UIButton *doctorNew;
@property (weak, nonatomic) IBOutlet UIButton *doctor1;
@property (weak, nonatomic) IBOutlet UIButton *doctor2;

@property (weak, nonatomic) IBOutlet UIImageView *nurseSticks;
@property (weak, nonatomic) IBOutlet UIButton *nurseNew;
@property (weak, nonatomic) IBOutlet UIButton *nurse1;
@property (weak, nonatomic) IBOutlet UIButton *nurse2;



// Methods
- (IBAction)pressedNurse:(id)sender;
- (IBAction)pressedFamily:(id)sender;
- (IBAction)pressedDoctor:(id)sender;
- (IBAction)pressedAllied:(id)sender;



- (void)moveView:(NSString *)direction :(NSInteger)value;





@end
