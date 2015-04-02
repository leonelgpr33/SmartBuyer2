//
//  Presupuesto.m
//  SmartBuyer
//
//  Created by LI Leonel G. Pérez Ramos on 29/03/15.
//  Copyright (c) 2015 LI Leonel G. Pérez Ramos. All rights reserved.
//

#import "Presupuesto.h"
#import "SWRevealViewController.h"
#import <Parse/Parse.h>

@interface Presupuesto ()

@end

@implementation Presupuesto

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.title=@"Presupuesto";
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.menuButton setTarget: self.revealViewController];
        [self.menuButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }

    // Do any additional setup after loading the view.
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
    PFObject *testObject = [PFObject objectWithClassName:@"presupuesto"];
    
    //Formateador para crear numeros desde un NSString
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterDecimalStyle;
    
    //Crear variables y asignar valor desde el formateador (f)
    NSNumber *ingresos = [f numberFromString:self.txtIngresos.text];
    NSNumber *rentas = [f numberFromString:self.txtRentas.text];
    NSNumber *consumos = [f numberFromString:self.txtConsumos.text];
    NSNumber *alimentacion = [f numberFromString:self.txtAlimentacion.text];
    NSNumber *seguros = [f numberFromString:self.txtSeguros.text];
    NSNumber *tarjetas = [f numberFromString:self.txtTarjetas.text];
    NSNumber *otros = [f numberFromString:self.txtOtros.text];
    
    testObject[@"ingresos"] = ingresos;
    testObject[@"rentas"] = rentas;
    testObject[@"consumos"] = consumos;
    testObject[@"alimentacion"] = alimentacion;
    testObject[@"seguros"] = seguros;
    testObject[@"tarjetas"] = tarjetas;
    testObject[@"otros"] = otros;

    if([testObject saveInBackground]){
        self.txtIngresos.text = NULL;
        self.txtRentas.text = NULL;
        self.txtConsumos.text = NULL;
        self.txtAlimentacion.text = NULL;
        self.txtSeguros.text = NULL;
        self.txtTarjetas.text = NULL;
        self.txtOtros.text = NULL;
        NSLog(@"Guardado correctamente");
    }else{
        NSLog(@"Error al guardar los datos");
    }
}


@end
