//
//  ClimbOnlyTableViewController.h
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 06/12/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//
// ----- CLIMB ONLY TABLE VIEW -----
// Table of all climbs in data model

#import <UIKit/UIKit.h>
#import "Crag.h"
#import "TestDataModelImport.h"
#import "ClimbInformationViewController.h"

@interface ClimbOnlyTableViewController : UITableViewController

@property (strong, nonatomic) Crag *cragPush;
@property (strong, nonatomic) Climb *climb;
@property (strong, nonatomic) TestDataModelImport *data;
@end
