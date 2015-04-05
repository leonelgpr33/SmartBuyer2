//
//  Registrar.m
//  SmartBuyer
//
//  Created by LI Leonel G. Pérez Ramos on 30/03/15.
//  Copyright (c) 2015 LI Leonel G. Pérez Ramos. All rights reserved.
//

#import "Registrar.h"
#import "SWRevealViewController.h"
#import <Parse/Parse.h>
#import "VariablesGlobales.h"



@interface Registrar ()

@end

@implementation Registrar

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"Registrar Gastos";
    // Do any additional setup after loading the view.
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.menuButton setTarget: self.revealViewController];
        [self.menuButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    
    //Concatenar cadena con signo de dollar
    
    NSString *cadenaMonto = [NSString stringWithFormat:@"$ %@", [totIngresos stringValue]];
    
    self.lblMonto.text = cadenaMonto ;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnGuardar:(id)sender {
    //Metodo disparado por el boton de guardar
    PFObject *testObject = [PFObject objectWithClassName:@"registrar"];
    
    
    testObject[@"tipo"] = self.txtTipo.text;
    testObject[@"categoria"] = self.txtCategoria.text;
    
    //Formateador para crear numeros desde un NSString
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterDecimalStyle;
    
    NSDateFormatter *d = [[NSDateFormatter alloc] init];
    d.dateStyle = NSDateFormatterShortStyle;
    
    //Crear variables y asignar valor desde el formateador (f)
    NSNumber *importe = [f numberFromString:self.txtImporte.text];
    NSDate *fecha = [d dateFromString:self.txtFecha.text];
    
    testObject[@"importe"] = importe;
    testObject[@"fecha"] = fecha;
    
    //Relacion conLugar en Parse
    PFObject *objLugar = [PFObject objectWithClassName:@"registralugar"];
    objLugar[@"nombre"] = self.txtLugar.text;
    
    //agregar relacion con registrar
    //objLugar[@"parent"] = testObject;
    PFRelation *relation = [objLugar relationForKey:@"registralugar"];
    [relation addObject:testObject];
    
    if([objLugar saveInBackground]){
        self.txtTipo.text = NULL;
        self.txtCategoria.text = NULL;
        self.txtImporte.text = NULL;
        self.txtFecha.text = NULL;
        self.txtLugar.text = NULL;



        NSLog(@"Guardado correctamente");
    }else{
        NSLog(@"Error al guardar los datos");
    }

}



@end
