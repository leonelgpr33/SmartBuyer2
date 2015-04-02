//
//  Principal.h
//  SmartBuyer
//
//  Created by LI Leonel G. Pérez Ramos on 29/03/15.
//  Copyright (c) 2015 LI Leonel G. Pérez Ramos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface Comportamiento : UIViewController

//Buttons
@property (strong, nonatomic) IBOutlet UIBarButtonItem *menuButton;
- (IBAction)btnVerHistorial:(id)sender;

//TextFields
@property (strong, nonatomic) IBOutlet UITextField *txtMes;
@property (strong, nonatomic) IBOutlet UITextField *txtSemana;
@property (strong, nonatomic) IBOutlet UITextField *txtHora;
@property (strong, nonatomic) IBOutlet UITextField *txtMontoMes;
@property (strong, nonatomic) IBOutlet UITextField *txtMontoSemana;
@property (strong, nonatomic) IBOutlet UITextField *txtMontoHora;

@end
