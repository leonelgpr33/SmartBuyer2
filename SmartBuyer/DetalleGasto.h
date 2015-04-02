//
//  DetalleGasto.h
//  SmartBuyer
//
//  Created by LI Leonel G. Pérez Ramos on 31/03/15.
//  Copyright (c) 2015 LI Leonel G. Pérez Ramos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface DetalleGasto : UIViewController

//Buttons
- (IBAction)btnRegresar:(id)sender;

//TextFields
@property (strong, nonatomic) IBOutlet UITextField *txtTipo;
@property (strong, nonatomic) IBOutlet UITextField *txtCategoria;
@property (strong, nonatomic) IBOutlet UITextField *txtImporte;
@property (strong, nonatomic) IBOutlet UITextField *txtFecha;
@property (strong, nonatomic) IBOutlet UITextField *txtLugar;

@end
