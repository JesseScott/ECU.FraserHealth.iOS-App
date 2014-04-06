//
//  SettingsDetailViewController.m
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-15.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import "SettingsDetailViewController.h"


@implementation SettingsDetailViewController


// Properties
@synthesize titleBar;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Set BG Colour
    self.view.backgroundColor = [UIColor colorWithRed:(242.0/255.0) green:(241.0/255.0) blue:(225.0/255.0) alpha:(255.0/255.0)];
    
    // Set Title Label
    titleFont = [UIFont fontWithName:@"MetaOT-Medium" size:24.0];
    self.titleBar.font = titleFont;
    self.titleBar.textColor = [UIColor whiteColor];
    self.titleBar.backgroundColor = [UIColor colorWithRed:(126.0/255.0) green:(193.0/255.0) blue:(191.0/255.0) alpha:(255.0/255.0)];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backToSettings:(id)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];

}


@end
