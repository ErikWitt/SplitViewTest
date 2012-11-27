//
//  StepByStepGuideStockService.m
//  SplitViewTest
//
//  Created by Erik Witt on 27.11.12.
//  Copyright (c) 2012 Universität Hamburg. All rights reserved.
//

#import "StepByStepGuideStockService.h"
#import "Step.h"
#import "StepByStepGuide.h"

@implementation StepByStepGuideStockService

- (StepByStepGuideStockService*) init
{
    self = [super init];
    if (self) {
        [self initStepByStepGuides];
    }
    return self;
}

- (void) initStepByStepGuides
{
    NSMutableArray* guides = [NSMutableArray array];
    NSMutableArray* steps = [NSMutableArray array];
    
    UIImage* image = [UIImage  imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"reservereifen" ofType:@"jpg"]];
    
    Step* step = [[Step alloc] initWithName: @"Schritt 1: Reservereifen holen" Text:@"Als ersten sollten sie den Reservereifen holen.\n Dazu begeben Sie sich bitte zu Ihrem Kofferaum und öffnen diesen.\n Räumen Sie den Kofferaum leer.\n Unter der Abdeckung finden Sie Ihren Reservereifen und einen Schlüssel zum lösen der Radmuttern. Gegebenenfalls ist auch ein Felgenschloss dabei.\n Nehmen Sie den Reservereifen aus der Vertiefung." Image:image AndImageDescription:@"Der Reservereifen unter der Abdeckung im Kofferaum"];
    [steps addObject:step];
    image = [UIImage  imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"reifenwechsel" ofType:@"jpg"]];
    step = [[Step alloc] initWithName: @"Schritt 2: Reifen wechseln" Text:@"Als erstes müssen Sie die das Auto aufbocken. Dann lösen Sie die Radmuttern des alten Reifens und nehmen den Reifen ab (Legen Sie den Reifen am besten in de Kofferaum, damit Sie ihn nicht vergessen). Jetzt nur noch den Reservereifen wieder anschrauben! Fahren Sie nicht zu schnell. Der Reservereifen ist nur für Geschwindigkeiten bis 90 Kilometer pro String ausgelegt!" Image:image AndImageDescription:@"Mit einer Hebenbühne geht es am besten!"];
    [steps addObject:step];
    
    StepByStepGuide* guide = [[StepByStepGuide alloc] initWithName: @"Reservereifen wechseln" AndSteps: steps];
    [guides addObject:guide];
    
    self.stepByStepGuides = guides;
}

@end
