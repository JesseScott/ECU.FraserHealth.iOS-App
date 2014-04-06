//
//  InfoViewController.h
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-15.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MPMoviePlayerController.h>


@interface InfoViewController : UIViewController {
    
    UIFont *titleFont;
    MPMoviePlayerController *moviePlayer;

    
}

// Properties
@property (weak, nonatomic) IBOutlet UILabel *titleBar;
@property (weak, nonatomic) IBOutlet UIImageView *videoView;
@property (weak, nonatomic) IBOutlet UIButton *videoPlayButton;

// Methods
- (IBAction)playVideo:(id)sender;

@end
