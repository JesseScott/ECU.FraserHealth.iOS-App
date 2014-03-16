//
//  PasscodeViewController.h
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-06.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PasscodeViewController : UIViewController {
    
    UIFont *mainTitleFont, *subTitleFont;
    
}

// Properties
@property (weak, nonatomic) IBOutlet UILabel *mainTitle;
@property (weak, nonatomic) IBOutlet UILabel *subTitle;

// Methods

- (IBAction)cancel:(id)sender;


@end
