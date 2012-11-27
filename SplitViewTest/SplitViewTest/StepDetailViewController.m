//
//  ServiceDetailViewController.m
//  SplitViewTest
//
//  Created by Erik Witt on 27.11.12.
//  Copyright (c) 2012 Universität Hamburg. All rights reserved.
//

#import "StepDetailViewController.h"

@interface StepDetailViewController ()

@end

@implementation StepDetailViewController

- (StepDetailViewController*) initWithStepByStepGuide: (StepByStepGuide*) guide AndStepIndex: (int) index;
{
    self = [super init];
    if (self) {
        self.guide = guide;
        self.currentStepIndex = index;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationItem setTitle:self.guide.name];
    
    self.currentStepCountPageControl.numberOfPages = self.guide.steps.count;
    self.currentStepCountPageControl.currentPage = self.currentStepIndex;
    
    Step* currentStep = [self.guide.steps objectAtIndex:self.currentStepIndex];
    
    [self.imageView setImage:currentStep.image];
    self.imageDescriptionLabel.text = currentStep.imageDescription;
    self.textView.text = currentStep.text;
    self.nameLabel.text = currentStep.name;
    
    self.navigationItem.hidesBackButton = YES;
    
}

- (IBAction) nextStep: (id) sender
{
    if (self.currentStepIndex + 1 < self.guide.steps.count) {        
        StepDetailViewController* detailViewController = [[StepDetailViewController alloc] initWithStepByStepGuide: self.guide AndStepIndex: self.currentStepIndex + 1];
        [self.navigationController pushViewController:detailViewController animated:YES];
    }
}

- (IBAction) previousStep: (id) sender
{
    if (self.currentStepIndex - 1  >= 0) {
        [self.navigationController popViewControllerAnimated:YES];
    }
}




@end
