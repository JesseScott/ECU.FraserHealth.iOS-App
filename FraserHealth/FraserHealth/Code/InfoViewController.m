//
//  InfoViewController.m
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-15.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import "InfoViewController.h"



@implementation InfoViewController


// Properties
@synthesize titleBar;
@synthesize videoView;
@synthesize videoPlayButton;


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



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"prepareForSegue");
 
    // Stop Video Playback
    if (moviePlayer != nil) {
        [moviePlayer stop];
    }
}


- (IBAction)playVideo:(id)sender {    
    NSLog(@"Play Video");
    
    // Hide Button
    self.videoPlayButton.hidden = YES;

    // Set URL
    NSURL *movieURL = [[NSBundle mainBundle] URLForResource:@"PatientBriefingVideo-HDiPad" withExtension:@"m4v"];
    
    // Set Player
    moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:movieURL];
    
    // Set Frame
    //[[moviePlayer view] setFrame:[self.videoView bounds]];
    moviePlayer.view.frame = CGRectMake(545, 71, 435, 280); 
    
    [self.view addSubview:[moviePlayer view]];
    
    // Hide Video Thumbnail
    [self.videoView setHidden:YES];
    
    // Controls
    moviePlayer.controlStyle = MPMovieControlStyleDefault;
    
    // Loop Video
    moviePlayer.repeatMode = MPMovieRepeatModeNone;
    
    // Play
    [moviePlayer play];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(playbackFinished) name:MPMoviePlayerPlaybackDidFinishNotification object:moviePlayer];

     
}

- (void)playbackFinished {
    NSLog(@"DONE");
}


@end
