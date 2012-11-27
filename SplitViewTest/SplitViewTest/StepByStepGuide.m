//
//  StepByStepGuide.m
//  SplitViewTest
//
//  Created by Erik Witt on 27.11.12.
//  Copyright (c) 2012 Universität Hamburg. All rights reserved.
//

#import "StepByStepGuide.h"

@implementation StepByStepGuide

- (StepByStepGuide*) initWithName: (NSString*) name AndSteps: (NSArray*) steps;{
    self = [super init];
    if (self) {
        self.name = name;
        self.steps = steps;
    }
    return self;
}

@end
