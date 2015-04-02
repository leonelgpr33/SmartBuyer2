//
//  RegistraLugar.h
//  SmartBuyer
//
//  Created by LI Leonel G. Pérez Ramos on 31/03/15.
//  Copyright (c) 2015 LI Leonel G. Pérez Ramos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface RegistraLugar : UIViewController

//Buttons
- (IBAction)btnGuardar:(id)sender;

//txtFields
@property (strong, nonatomic) IBOutlet UITextField *txtNombre;
@property (strong, nonatomic) IBOutlet UITextField *txtTipo;
@property (strong, nonatomic) IBOutlet UITextField *txtDomicilio;
@property (strong, nonatomic) IBOutlet UITextView *txtObservaciones;

@end
