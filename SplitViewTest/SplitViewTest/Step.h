//
//  Step.h
//  SplitViewTest
//
//  Created by Erik Witt on 27.11.12.
//  Copyright (c) 2012 Universität Hamburg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Step : NSObject

@property (nonatomic) NSString* name;
@property (nonatomic) NSString* text;
@property (nonatomic) UIImage* image;
@property (nonatomic) NSString* imageDescription;

- (Step*) initWithName: (NSString*) name Text: (NSString*) text Image: (UIImage*) image AndImageDescription: (NSString*) description;

@end
