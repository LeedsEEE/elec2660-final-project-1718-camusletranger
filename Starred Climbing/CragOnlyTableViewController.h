//
//  CragOnlyTableViewController.h
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 06/12/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Crag.h"
#import "TestDataModelImport.h"

@interface CragOnlyTableViewController : UITableViewController

@property (strong,nonatomic) TestDataModelImport *data;

@end
