//
//  Operations.h
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 30/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import "Crag.h"

@interface Operations : Crag

@property (nonatomic, strong) NSArray *timeOfDayArray;       // Populates the picker with possible time of day, and time of year selections

@property (nonatomic, strong) NSArray *timOfYearArray;       // Populates the picker with possible and time of year selections


@property NSInteger  timeOfDayPosition, timeOfYearPosition;                  // Setters and getters for picker position relevent to time of day/year

@property NSString *timeOfDay, *timeOfYear;

@property (strong, nonatomic) NSMutableArray *selectedCrags; // Array made of crags selected by picker time of day/year selections

//-(void) convertToStringDay: (NSString *) day; // Takes the integer value of timeOfDayPosition and equates it with an NSString value that realtates to those in the picker, and in the Crag class

//-(void) convertToStringYear: (NSString *) year; // Takes the integer value of timeOfYearPosition and equates it with an NSString value that realtates to those in the picker, and in the Crag class

-(NSString *) convertToStringDay; // Given the integer value of timeOfDayPosition and equates it with an NSString value that realtates to those in the picker, and in the Crag class


-(NSString *) convertToStringYear; // Given the integer value of timeOfYearPosition and equates it with an NSString value that realtates to those in the picker, and in the Crag class

//-(NSInteger) convertToStringDaytime: (NSInteger *) day;
//-(void) convertToStringYeartime: (NSInteger *) year;

-(void) addCrag: (Crag *) crag;    // Method to add climb to a new array


@end
