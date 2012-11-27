//
//  SettingCategoryViewController.m
//  SplitViewTest
//
//  Created by Erik Witt on 27.11.12.
//  Copyright (c) 2012 Universität Hamburg. All rights reserved.
//

#import "SettingCategoryViewController.h"
#import "ProfilController.h"

@interface SettingCategoryViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation SettingCategoryViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"standard"];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                      reuseIdentifier:@"standard"];
    }
    
    cell.textLabel.text = @"Profil";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ProfilController* detailViewController = [[ProfilController alloc] init];
    
    UINavigationController* detailNavigationController = [self.splitViewController.viewControllers objectAtIndex:1];
    [detailNavigationController popToRootViewControllerAnimated:NO];
    [detailNavigationController pushViewController:detailViewController animated:YES];
}


@end
