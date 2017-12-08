//
//  CragSpecificTableViewController.h
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 10/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TestDataModelImport.h"
#import "CragListTableViewController.h"

@interface CragSpecificTableViewController : UITableViewController

@property (strong, nonatomic) TestDataModelImport *data;
@property (strong, nonatomic) TestDataModelImport *tableData;

@end
