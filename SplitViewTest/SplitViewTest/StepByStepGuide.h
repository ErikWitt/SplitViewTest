//
//  StepByStepGuide.h
//  SplitViewTest
//
//  Created by Erik Witt on 27.11.12.
//  Copyright (c) 2012 Universität Hamburg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StepByStepGuide : NSObject

@property (nonatomic) NSString* name;
@property (nonatomic) NSArray* steps;

- (StepByStepGuide*) initWithName: (NSString*) name AndSteps: (NSArray*) steps;

@end
