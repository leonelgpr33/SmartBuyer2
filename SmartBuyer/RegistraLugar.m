//
//  RegistraLugar.m
//  SmartBuyer
//
//  Created by LI Leonel G. Pérez Ramos on 31/03/15.
//  Copyright (c) 2015 LI Leonel G. Pérez Ramos. All rights reserved.
//

#import "RegistraLugar.h"
#import <Parse/Parse.h>

@interface RegistraLugar ()

@end

@implementation RegistraLugar

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"Registrar Lugar Frecuente";

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
    PFObject *testObject = [PFObject objectWithClassName:@"registralugar"];
    
    testObject[@"nombre"] = self.txtNombre.text;
    testObject[@"tipo"] = self.txtTipo.text;
    testObject[@"domicilio"] = self.txtDomicilio.text;
    testObject[@"observaciones"] = self.txtObservaciones.text;
    
    
    if([testObject saveInBackground]){
        self.txtNombre.text = NULL;
        self.txtTipo.text = NULL;
        self.txtDomicilio.text = NULL;
        self.txtObservaciones.text = NULL;
        
        NSLog(@"Guardado correctamente");
    }else{
        NSLog(@"Error al guardar los datos");
    }

}

- (IBAction)btnClose:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
