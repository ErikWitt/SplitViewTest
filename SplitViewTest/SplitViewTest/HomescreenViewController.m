//
//  ViewController.m
//  SplitViewTest
//
//  Created by Erik Witt on 27.11.12.
//  Copyright (c) 2012 Universität Hamburg. All rights reserved.
//

#import "HomescreenViewController.h"
#import "ServiceCategoryViewController.h"
#import "WarningCategoryViewController.h"
#import "ManualCategoryViewController.h"
#import "TipCategoryViewController.h"
#import "SettingCategoryViewController.h"

@interface HomescreenViewController ()

@end

@implementation HomescreenViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.navigationItem setTitle:@"Home"];
}

- (IBAction)serviceButtonPushed:(id)sender
{
    UIViewController* viewController = [[ServiceCategoryViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (IBAction)warningButtonPushed:(id)sender
{
    UIViewController* viewController = [[WarningCategoryViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (IBAction)manualButtonPushed:(id)sender
{
    UIViewController* viewController = [[ManualCategoryViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (IBAction)tipButtonPushed:(id)sender
{
    UIViewController* viewController = [[TipCategoryViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];    
}

- (IBAction)settingsButtonPushed:(id)sender
{
    UIViewController* viewController = [[SettingCategoryViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}








@end
