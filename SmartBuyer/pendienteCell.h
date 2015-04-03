//
//  pendienteCell.h
//  SmartBuyer
//
//  Created by LI Leonel G. Pérez Ramos on 02/04/15.
//  Copyright (c) 2015 LI Leonel G. Pérez Ramos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface pendienteCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *lblTipo;
@property (strong, nonatomic) IBOutlet UILabel *lblFecha;
@property (strong, nonatomic) IBOutlet UILabel *lblLugar;
@property (strong, nonatomic) IBOutlet UILabel *lblMonto;

@end
