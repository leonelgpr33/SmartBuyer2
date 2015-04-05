//
//  EditarGasto.h
//  SmartBuyer
//
//  Created by LI Leonel G. Pérez Ramos on 31/03/15.
//  Copyright (c) 2015 LI Leonel G. Pérez Ramos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface EditarGasto : UIViewController

//Buttons
- (IBAction)btnGuardar:(id)sender;

//Labels
@property (strong, nonatomic) IBOutlet UILabel *lblTipo;

//TextFields
@property (strong, nonatomic) IBOutlet UITextField *txtCategoria;
@property (strong, nonatomic) IBOutlet UITextField *txtImporte;
@property (strong, nonatomic) IBOutlet UITextField *txtFecha;
@property (strong, nonatomic) IBOutlet UITextField *txtLugar;

@property (strong, nonatomic) NSString *tipo;
@property (strong, nonatomic) NSString *categoria;
@property (strong, nonatomic) NSString *importe;
@property (strong, nonatomic) NSString *fecha;
@property (strong, nonatomic) NSString *lugar;

@end
