//
//  Pendientes.m
//  SmartBuyer
//
//  Created by LI Leonel G. Pérez Ramos on 30/03/15.
//  Copyright (c) 2015 LI Leonel G. Pérez Ramos. All rights reserved.
//

#import "Pendientes.h"
#import "SWRevealViewController.h"
#import "pendienteCell.h"


@interface Pendientes ()

@end

@implementation Pendientes

- (id)initWithCoder:(NSCoder *)aCoder
{
    self = [super initWithCoder:aCoder];
    if (self) {
        // Custom the table
        // The className to query on
        self.parseClassName = @"registrar";
        // The key of the PFObject to display in the label of the default cell style
        self.textKey = @"tipo";
        // Whether the built-in pull-to-refresh is enabled
        self.pullToRefreshEnabled = YES;
        // Whether the built-in pagination is enabled
        self.paginationEnabled = YES;
        // The number of objects to show per page
        self.objectsPerPage = 8;
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"Gastos Pendientes";
    
    // Do any additional setup after loading the view.
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.menuButton setTarget: self.revealViewController];
        [self.menuButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (PFQuery *)queryForTable
{
    PFQuery *query = [PFQuery queryWithClassName:@"registrar"];
    [query orderByDescending:@"createdAt"];
    return query;
}

- (void) objectsDidLoad:(NSError *)error
{
    [super objectsDidLoad:error];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath object:(PFObject *)object {
    
    static NSString *CellIdentifier = @"pendienteCelda";
    
    pendienteCell *cell = (pendienteCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        
        cell = [[pendienteCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    NSLog(@"Fecha %@",[object objectForKey:@"fecha"] );
    
    NSNumber *importe = [object objectForKey:@"importe"];
    NSDate *fecha = [object objectForKey:@"fecha"];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    
    NSString *fecha_str = [dateFormatter stringFromDate:fecha];
    
    // Configure the cell
    cell.lblTipo.text = [object objectForKey:@"tipo"];
    cell.lblLugar.text = [object objectForKey:@"categoria"];
    cell.lblMonto.text = [importe stringValue];
    cell.lblFecha.text = fecha_str;
    
    
    return cell;
}


@end
