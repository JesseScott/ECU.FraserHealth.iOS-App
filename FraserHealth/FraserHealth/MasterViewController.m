//
//  MasterViewController.m
//  FraserHealth
//
//  Created by Jesse Scott on 2014-03-05.
//  Copyright (c) 2014 ECUAD. All rights reserved.
//

#import "MasterViewController.h"

#import "DetailViewController.h"


@implementation MasterViewController

- (void)awakeFromNib {
    self.clearsSelectionOnViewWillAppear = NO;
    self.preferredContentSize = CGSizeMake(225.0, 100.0); // EDIT THIS - 225.0
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    imagesArray = [NSArray arrayWithObjects:
                   [UIImage imageNamed:@"ViewDashboard"],
                   [UIImage imageNamed:@"TodaysExercises_Selected"],
                   [UIImage imageNamed:@"AboutCondition"],
                   [UIImage imageNamed:@"ViewProgress"],
                   [UIImage imageNamed:@"MyCommunity"],
                   [UIImage imageNamed:@"PercentCompleted"],
                   nil];
    
    
    self.detailViewController = (DetailViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [imagesArray count];
}

// HOW EACH CELL LOOKS
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    UIImageView *av;
    if(indexPath.row < [imagesArray count]) {
        av = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 225, 100)];
    }
    else if(indexPath.row == [imagesArray count]) {
        NSLog(@"here");
        av = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 225, 200)]; // FIX SIZE OF LAST CELL
    }
    av.image = [imagesArray objectAtIndex:indexPath.row];
    cell.backgroundView = av;
    //cell.imageView.image = av.image; // FIX SELECTED IMAGE
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}

// WHAT HAPPENS WHEN WE CLICK A PARTICULAR CELL
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *row = [NSString stringWithFormat:@"%d", indexPath.row];
    self.detailViewController.detailItem = row;
}

@end
