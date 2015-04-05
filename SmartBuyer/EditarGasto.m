//
//  EditarGasto.m
//  SmartBuyer
//
//  Created by LI Leonel G. Pérez Ramos on 31/03/15.
//  Copyright (c) 2015 LI Leonel G. Pérez Ramos. All rights reserved.
//

#import "EditarGasto.h"

@interface EditarGasto ()

@end

@implementation EditarGasto

@synthesize lblTipo;
@synthesize txtCategoria;
@synthesize txtImporte;
@synthesize txtFecha;
@synthesize txtLugar;

@synthesize tipo;
@synthesize categoria;
@synthesize fecha;
@synthesize importe;
@synthesize lugar;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"Editar Gasto";
    
    self.lblTipo.text = tipo;
    self.txtCategoria.text = categoria;
    self.txtFecha.text = fecha;
    self.txtImporte.text = importe;
    //self.txtLugar.text = lugar;


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
}
@end
