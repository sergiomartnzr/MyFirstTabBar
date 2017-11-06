//
//  CellMatchTable.h
//  MyFirstTabBar
//
//  Created by Sergio Martinez on 11/5/17.
//  Copyright © 2017 Sergio Martinez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellMatchTable : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lbFirstTeam;
@property (weak, nonatomic) IBOutlet UILabel *lbSecondTeam;
@property (weak, nonatomic) IBOutlet UILabel *lbMatchHour;

@end
