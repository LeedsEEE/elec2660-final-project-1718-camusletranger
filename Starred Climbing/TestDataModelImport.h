//
//  TestDataModelImport.h
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 23/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Crag.h"

@interface TestDataModelImport : NSObject

@property (strong, nonatomic) NSMutableArray *crags; // An array of crag instances
@property (strong, nonatomic) NSMutableArray *dinasCromlechClimbs, *clogwynYrGrochanClimbs, *carregWastadClimbs, *stanagePopularClimbs; // An array of climbs at specific crags

@end
