//
//  CragListTableViewController.h
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 10/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"
#import "TestDataModelImport.h"

@interface CragListTableViewController : UITableViewController

@property (strong, nonatomic) TestDataModelImport *data;
@property (strong, nonatomic) Crag *crag;
@property (strong, nonatomic) NSMutableArray *tempArray;

//@property (strong, nonatomic) Operations *tableOperations;
//@property (strong, nonatomic) Operations *operations;
@property (strong, nonatomic) TestDataModelImport *tableData;

@end
