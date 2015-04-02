//
//  Registrar.m
//  SmartBuyer
//
//  Created by LI Leonel G. Pérez Ramos on 30/03/15.
//  Copyright (c) 2015 LI Leonel G. Pérez Ramos. All rights reserved.
//

#import "Registrar.h"
#import "SWRevealViewController.h"


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

- (IBAction)btnClose:(id)sender {
        [self dismissViewControllerAnimated:YES completion:nil];
}

@end
