//
//  CalendarMedicationViewController.h
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-30.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalendarMedicationViewController : UIViewController {
    
    NSInteger screenState;
    
}

// Properties
@property (weak, nonatomic) IBOutlet UIImageView *foregroundImage;


// Methods
- (IBAction)pressedDone:(id)sender;

- (IBAction)pressedMed1:(id)sender;

- (IBAction)pressedMed2:(id)sender;

@end
