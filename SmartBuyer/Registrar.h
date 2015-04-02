//
//  Registrar.h
//  SmartBuyer
//
//  Created by LI Leonel G. Pérez Ramos on 30/03/15.
//  Copyright (c) 2015 LI Leonel G. Pérez Ramos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface Registrar : UIViewController

//Buttons
@property (strong, nonatomic) IBOutlet UIBarButtonItem *menuButton;
- (IBAction)btnGuardar:(id)sender;
- (IBAction)btnClose:(id)sender;

//Labels
@property (strong, nonatomic) IBOutlet UILabel *lblMonto;

//TextFields
@property (strong, nonatomic) IBOutlet UITextField *txtTipo;
@property (strong, nonatomic) IBOutlet UITextField *txtCategoria;
@property (strong, nonatomic) IBOutlet UITextField *txtImporte;
@property (strong, nonatomic) IBOutlet UITextField *txtFecha;
@property (strong, nonatomic) IBOutlet UITextField *txtLugar;

@end
