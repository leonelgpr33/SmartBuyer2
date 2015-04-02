//
//  Presupuesto.h
//  SmartBuyer
//
//  Created by LI Leonel G. Pérez Ramos on 29/03/15.
//  Copyright (c) 2015 LI Leonel G. Pérez Ramos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface Presupuesto : UIViewController

//Buttons
@property (strong, nonatomic) IBOutlet UIBarButtonItem *menuButton;
- (IBAction)btnGuardar:(id)sender;
- (IBAction)btnCancelar:(id)sender;

//TextFields
@property (strong, nonatomic) IBOutlet UIImageView *txtIngresos;
@property (strong, nonatomic) IBOutlet UITextField *txtEgresos;
@property (strong, nonatomic) IBOutlet UITextField *txtRentas;
@property (strong, nonatomic) IBOutlet UITextField *txtConsumos;
@property (strong, nonatomic) IBOutlet UITextField *txtAlimentacion;
@property (strong, nonatomic) IBOutlet UITextField *txtSeguros;
@property (strong, nonatomic) IBOutlet UITextField *txtTarjetas;

@end
