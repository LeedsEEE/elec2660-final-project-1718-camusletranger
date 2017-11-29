//
//  SearchOperations.h
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 24/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import "TestDataModelSubclass.h"
@interface SearchOperations : TestDataModelSubclass


@property (nonatomic, strong) NSArray *timeOfDayArray;       // Populates the picker with possible time of day, and time of year selections

@property (nonatomic, strong) NSArray *timOfYearArray;       // Populates the picker with possible and time of year selections


@property NSInteger  timeOfDay, timeOfYear;                  // Setters and getters for picker position relevent to time of day/year

@property (strong, nonatomic) NSMutableArray *selectedCrags; // Array made of crags selected by picker time of day/year selections

-(void) addCrag: (Crag *) crag;                              // Method to add climb to an array based on the picker selected crags



@end
