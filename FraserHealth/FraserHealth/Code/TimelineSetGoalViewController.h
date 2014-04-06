//
//  TimelineSetGoalViewController.h
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-30.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TimelineViewController.h"

@interface TimelineSetGoalViewController : UIViewController <UITextFieldDelegate> {
    
    TimelineViewController *host;
    
}

// Properties


// Methods
- (IBAction)pressedCancel:(id)sender;

@end
