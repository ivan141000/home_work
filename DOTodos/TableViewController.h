//
//  TableViewController.h
//  DOTodos
//
//  Created by ivan on 26.07.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController {
    NSMutableArray *pointsPlan;
 }

@property (nonatomic, retain) NSArray *pointsPlan;

@end
