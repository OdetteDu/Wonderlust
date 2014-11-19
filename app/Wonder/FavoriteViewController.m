//
//  FavoriteViewController.m
//  Wonder
//
//  Created by Caidie on 14-11-18.
//  Copyright (c) 2014年 Stanford. All rights reserved.
//

#import "FavoriteViewController.h"

@interface FavoriteViewController ()
@property (weak, nonatomic) IBOutlet UITableView *favoriteTable;
@property (nonatomic, strong) NSArray *favoriteTitles;
@end

@implementation FavoriteViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.favoriteTitles.count;
}

- (UITableViewCell *)tableView:(UITableView *)sender
cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    cell = [self.favoriteTable dequeueReusableCellWithIdentifier:@"FavoriteTableCell" forIndexPath:indexPath];
    cell.textLabel.text = [self.favoriteTitles objectAtIndex:indexPath.row];
    return cell;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.favoriteTitles = [[NSArray alloc] initWithObjects:
                           @"The Battle of Hastings",
                           @"P Versus NP Problem",
                           @"The Play",
                           @"The Most Interesting Man in the World",
                           @"Mojave Phone Booth",
                           @"Infinite Monkey Theorem",
                           @"Manhattanhenge",
                           @"The Hitchhiker’s Guide to the Galaxy",
                           @"Gadsby",
                           @"Fountain (Duchamp)",
                           @"Louis Zamperini",
                           @"Bokononism", nil];
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

@end
