//
//  TimelineCheckinViewController.h
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-23.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimelineCheckinViewController : UIViewController {
 
    UIFont *mainFont;
    
}

// Properties
@property (weak, nonatomic) IBOutlet UILabel *dynamicLabel;
@property (weak, nonatomic) IBOutlet UILabel *staticLabel;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UIButton *face1Button;
@property (weak, nonatomic) IBOutlet UIButton *face2Button;
@property (weak, nonatomic) IBOutlet UIButton *face3Button;
@property (weak, nonatomic) IBOutlet UIButton *face4Button;
@property (weak, nonatomic) IBOutlet UIButton *face5Button;


// Methods
- (IBAction)sliderChanged:(id)sender;
- (IBAction)face1:(id)sender;
- (IBAction)face2:(id)sender;
- (IBAction)face3:(id)sender;
- (IBAction)face4:(id)sender;
- (IBAction)face5:(id)sender;

@end
