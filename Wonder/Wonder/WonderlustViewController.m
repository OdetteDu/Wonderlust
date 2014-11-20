//
//  WonderlustViewController.m
//  Wonder
//
//  Created by Caidie on 14-11-18.
//  Copyright (c) 2014年 Stanford. All rights reserved.
//

#import "WonderlustViewController.h"
#import "KxMenu.h"
#import "FavoriteViewController.h"

@interface WonderlustViewController ()

@end

@implementation WonderlustViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showMenu
{
    NSArray *menuItems =
    @[
      
      [KxMenuItem menuItem:@"Favorite"
                     image:[UIImage imageNamed:@"check_icon"]
                    target:self
                    action:@selector(toFavorites)],
      
      [KxMenuItem menuItem:@"History"
                     image:[UIImage imageNamed:@"reload"]
                    target:self
                    action:@selector(pushMenuItem:)],
      
      [KxMenuItem menuItem:@"Categories"
                     image:[UIImage imageNamed:@"search_icon"]
                    target:self
                    action:@selector(pushMenuItem:)],
      
      [KxMenuItem menuItem:@"Setting"
                     image:[UIImage imageNamed:@"home_icon"]
                    target:self
                    action:@selector(toSettings)]
      ];
    
    
    
    [KxMenu showMenuInView:self.view
                  fromRect:CGRectMake(self.view.bounds.size.width-100, 5, 100, 50)
                 menuItems:menuItems];
}

- (IBAction)menuClicked:(UIButton *)sender {
    [self showMenu];
    
}

-(void)printToConsole
{
    NSLog(@"here");
    return;
}

-(void)toFavorites
{
    NSLog(@"to favorites");
    [self performSegueWithIdentifier:@"toFavorites" sender:NULL];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"here");
    
    if([segue.identifier isEqualToString:@"toFavorites"]) {
        FavoriteViewController *favorites = segue.destinationViewController;
    }
}




@end
