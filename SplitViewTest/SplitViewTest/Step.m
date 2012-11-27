//
//  Step.m
//  SplitViewTest
//
//  Created by Erik Witt on 27.11.12.
//  Copyright (c) 2012 Universität Hamburg. All rights reserved.
//

#import "Step.h"

@implementation Step

- (Step*) initWithName: (NSString*) name Text: (NSString*) text Image: (UIImage*) image AndImageDescription: (NSString*) imageDescription
{
    self = [super init];
    if (self) {
        self.name = name;
        self.text = text;
        self.image = image;
        self.imageDescription = imageDescription;
    }
    return self;
}

@end
