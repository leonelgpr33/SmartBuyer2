//
//  Lugares.h
//  SmartBuyer
//
//  Created by LI Leonel G. Pérez Ramos on 30/03/15.
//  Copyright (c) 2015 LI Leonel G. Pérez Ramos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface Lugares : UITableViewController

//Buttons
@property (strong, nonatomic) IBOutlet UIBarButtonItem *menuButton;

//Labels
@property (strong, nonatomic) IBOutlet UILabel *lblNombre;
@property (strong, nonatomic) IBOutlet UILabel *lblTipo;

@end
