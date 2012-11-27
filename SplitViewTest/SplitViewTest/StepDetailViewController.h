//
//  ServiceDetailViewController.h
//  SplitViewTest
//
//  Created by Erik Witt on 27.11.12.
//  Copyright (c) 2012 Universität Hamburg. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Step.h"
#import "StepByStepGuide.h"

@interface StepDetailViewController : UIViewController<UIGestureRecognizerDelegate>

@property (nonatomic) IBOutlet UIImageView* imageView;
@property (nonatomic) IBOutlet UILabel* imageDescriptionLabel;
@property (nonatomic) IBOutlet UITextView* textView;
@property (nonatomic) IBOutlet UILabel* nameLabel;
@property (nonatomic) IBOutlet UIPageControl* currentStepCountPageControl;

@property (nonatomic) StepByStepGuide* guide;
@property (nonatomic) int currentStepIndex;

- (StepDetailViewController*) initWithStepByStepGuide: (StepByStepGuide*) guide AndStepIndex: (int) index;

@end
