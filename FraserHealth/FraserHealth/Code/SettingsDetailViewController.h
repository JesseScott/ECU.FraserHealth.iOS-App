//
//  SettingsDetailViewController.h
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-15.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsDetailViewController : UIViewController {
    
    UIFont *titleFont;
    
}

// Properties
@property (weak, nonatomic) IBOutlet UILabel *titleBar;


// Methods
- (IBAction)backToSettings:(id)sender;


@end
