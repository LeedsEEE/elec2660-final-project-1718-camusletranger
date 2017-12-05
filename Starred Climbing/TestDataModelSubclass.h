//
//  TestDataModelSubclass.h
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 23/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.

//  Test Data Model; more proof of concept than any thing of ractical use, times of day, and year are not accurate and have been chosen for development purposes

#import "Crag.h"

@interface TestDataModelSubclass : Crag

@property (strong, nonatomic) NSMutableArray *crags; // An array of crag instances

@property (strong, nonatomic) NSMutableArray *dinasCromlechClimbs, *clogwynYrGrochanClimbs, *carregWastadClimbs, *stanagePopularClimbs; // An array of climbs at specific crags


@end
