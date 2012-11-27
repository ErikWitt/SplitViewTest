//
//  ServiceCategoryViewController.m
//  SplitViewTest
//
//  Created by Erik Witt on 27.11.12.
//  Copyright (c) 2012 Universität Hamburg. All rights reserved.
//

#import "ServiceCategoryViewController.h"
#import "StepByStepGuide.h"
#import "StepDetailViewController.h"
#import "Step.h"


@interface ServiceCategoryViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation ServiceCategoryViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationItem setTitle:@"Service"];
    self.guideStockService = [[StepByStepGuideStockService alloc] init];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.guideStockService.stepByStepGuides.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    StepByStepGuide* guide = [self.guideStockService.stepByStepGuides objectAtIndex:indexPath.row];
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"standard"];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                      reuseIdentifier:@"standard"];
    }
    
    cell.textLabel.text = guide.name;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    StepByStepGuide* guide = [self.guideStockService.stepByStepGuides objectAtIndex:indexPath.row];
    StepDetailViewController* detailViewController = [[StepDetailViewController alloc] initWithStepByStepGuide:guide AndStepIndex:0];
    
    UINavigationController* detailNavigationController = [self.splitViewController.viewControllers objectAtIndex:1];
    [detailNavigationController popToRootViewControllerAnimated:NO];
    [detailNavigationController pushViewController:detailViewController animated:NO];
}


@end
