//
//  ViewController.m
//  MyFirstTabBar
//
//  Created by Sergio Martinez on 11/1/17.
//  Copyright © 2017 Sergio Martinez. All rights reserved.
//

#import "First.h"
#import "CellMatchTable.h"

@interface First ()

@property NSMutableArray *firstTeams;
@property NSMutableArray *secondTeams;
@property NSMutableArray *matchHours;
@end

@implementation First

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initController];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {
    self.firstTeams  = [[NSMutableArray alloc] initWithObjects: @"Cachorros", @"Mercenarios", @"Tomateros", @"Osos", @"Indios", nil];
    
    self.secondTeams  = [[NSMutableArray alloc] initWithObjects: @"Indios", @"Tomateros", @"Apaches", @"Michoacanos", @"Aguilas", nil];
    
    self.matchHours = [[NSMutableArray alloc] initWithObjects: @"12:30", @"21:40", @"13:00", @"20:00", @"21:00", nil];
}

/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.firstTeams.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    CellMatchTable *cell = (CellMatchTable *)[tableView dequeueReusableCellWithIdentifier:@"CellMatchTable"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"CellMatchTable" bundle:nil] forCellReuseIdentifier:@"CellMatchTable"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"CellMatchTable"];
    }
    //Fill cell with info from arrays
    cell.lbFirstTeam.text       = self.firstTeams[indexPath.row];
    cell.lbSecondTeam.text        = self.secondTeams[indexPath.row];
    cell.lbMatchHour.text      = self.matchHours[indexPath.row];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //Pending
}
@end
