//
//  OnboardViewController.h
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-15.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OnboardViewController : UIViewController <UIGestureRecognizerDelegate> {
    
    NSArray *onboardImages;
    NSInteger index;
    
}

// Properties
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *leftSwipe;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *rightSwipe;

@property (weak, nonatomic) IBOutlet UIImageView *foregroundImage;



// Methods
- (IBAction)swipedLeft:(id)sender;

- (IBAction)swipedRight:(id)sender;

- (IBAction)pressedDone:(id)sender;



@end
