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
#import "EditarGasto.h"


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
    [query orderByAscending:@"fecha"];
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
    
    NSNumber *importe = [object objectForKey:@"importe"];
    NSDate *fecha = [object objectForKey:@"fecha"];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    
    NSString *fecha_str = [dateFormatter stringFromDate:fecha];
    
    NSLog(@"%@", [object objectForKey:@"tipo"]);
    
    // Configure the cell
    cell.lblTipo.text = [object objectForKey:@"tipo"];
    cell.lblLugar.text = [object objectForKey:@"categoria"];
    cell.lblMonto.text = [importe stringValue];
    cell.lblFecha.text = fecha_str;
    
    
    return cell;
}

//Detail segue
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"ShowEditarGasto"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        EditarGasto *segundoView = [segue destinationViewController];
        PFObject *object = [self.objects objectAtIndex:indexPath.row];
        
        NSString *tipoRegistrar = [object objectForKey:@"tipo"];
        NSString *categoriaRegistrar = [object objectForKey:@"categoria"];
        NSNumber *importeRegistrar = [object objectForKey:@"importe"];
        NSDate *fechaRegistrar = [object objectForKey:@"fecha"];
        
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        
        NSString *fecha_str = [dateFormatter stringFromDate:fechaRegistrar];
        NSString *lugarRegistrar = [object objectForKey:@"lugar"];
        
        NSLog(@"%@", [object objectForKey:@"lugar"]);

        
        segundoView.tipo = tipoRegistrar;
        segundoView.categoria = categoriaRegistrar;
        segundoView.importe = [importeRegistrar stringValue];
        segundoView.fecha = fecha_str;
        segundoView.lugar = lugarRegistrar;
        
    }
}
    //Deleting row from parse dot com
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    // Remove the row from data model
    PFObject *object = [self.objects objectAtIndex:indexPath.row];
    [object deleteInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
       //[self refreshTable:nil];
    }];
}


@end
