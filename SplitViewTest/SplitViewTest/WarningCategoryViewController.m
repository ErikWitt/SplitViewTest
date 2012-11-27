//
//  WarningViewController.m
//  SplitViewTest
//
//  Created by Erik Witt on 27.11.12.
//  Copyright (c) 2012 Universität Hamburg. All rights reserved.
//

#import "WarningCategoryViewController.h"
#import "WarningLightContainerViewController.h"

@interface WarningCategoryViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation WarningCategoryViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationItem setTitle:@"Warnings"];
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
    
    cell.textLabel.text = @"Warnleuchten";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    WarningLightContainerViewController* detailViewController = [[WarningLightContainerViewController alloc] init];
    
    UINavigationController* masterNavigationController = [self.splitViewController.viewControllers objectAtIndex:0];
    [masterNavigationController pushViewController:detailViewController animated:YES];
}


@end
