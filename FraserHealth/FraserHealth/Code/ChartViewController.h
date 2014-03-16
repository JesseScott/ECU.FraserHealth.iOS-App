//
//  ChartViewController.h
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-15.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChartViewController : UIViewController {
    
    UIFont *titleFont;
    
}

// Properties
@property (weak, nonatomic) IBOutlet UILabel *titleBar;
@property (weak, nonatomic) IBOutlet UIImageView *toggleImage;

// Methods

- (IBAction)toggleMedications:(id)sender;
- (IBAction)toggleAllergies:(id)sender;


@end
