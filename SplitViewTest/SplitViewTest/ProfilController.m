//
//  ProfilController.m
//  CarAssist
//
//  Created by 0haak on 24.11.12.
//  Copyright (c) 2012 0witt. All rights reserved.
//

#import "ProfilController.h"

@interface ProfilController ()
@property BOOL wahr;

@end

@implementation ProfilController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.hidesBackButton = YES;
    // Do any additional setup after loading the view from its nib.
    [self.vorname setText:@"Klaus"];
    [self.nachname setText:@"Kastikus"];
    [self.autoModel setText:@"BMW Z4"];
    [self.autoRadio setText:@"Standard"];
    [self.emailAdresse setText:@"KlauKastikus@googlemail.com"];
    [self.lieblingsKEKSEEE setText:@"Oreo"];
    
}


-(IBAction) editButtonpressed:(id)sender
{
    if (self.wahr) {
        [self.vorname setEnabled:YES];
         [self.nachname setEnabled:YES];
         [self.autoModel setEnabled:YES];
         [self.autoRadio setEnabled:YES];
         [self.emailAdresse setEnabled:YES];
         [self.lieblingsKEKSEEE setEnabled:true];
        self.wahr = FALSE;
    }
    else
    {
        [self.vorname setEnabled:FALSE];
        [self.nachname setEnabled:FALSE];
        [self.autoModel setEnabled:FALSE];
        [self.autoRadio setEnabled:FALSE];
        [self.emailAdresse setEnabled:FALSE];
        [self.lieblingsKEKSEEE setEnabled:false];
        self.wahr = true;
    }
}

-(IBAction) returnButton:(UITextField*)sender
{
    [sender resignFirstResponder];
}

@end
