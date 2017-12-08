//
//  TestDataModelImport.h
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 23/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//
// ----- TEST DATA MODEL -----
// Model that includes crag, and climb instances, and methods (attempted) for communication with view controller


#import <Foundation/Foundation.h>
#import "Crag.h"

@interface TestDataModelImport : NSObject

@property (strong, nonatomic) NSMutableArray *crags; // An array of crag instances
@property (strong, nonatomic) NSMutableArray *climbs; // An array of climb instances

@property (strong, nonatomic) NSMutableArray *dinasCromlechClimbs, *clogwynYrGrochanClimbs, *carregWastadClimbs, *stanagePopularClimbs; // An array of climbs at specific crags



@property (strong, nonatomic) NSMutableArray *selectedArray; // Empty array to ready to have crag objects dded to it from the addCragToArray method
@property (strong, nonatomic) TestDataModelImport *data;

// ----- Methods for Sorting Crags -----
@property (nonatomic, strong) NSArray *timeOfDayArray; // Populates the picker with possible time of day, and time of year selections

@property (nonatomic, strong) NSArray *timOfYearArray; // As above

@property NSInteger  timeOfDayPosition, timeOfYearPosition; // Getters for picker position relevent to time of day/year

@property NSString *timeOfDay, *timeOfYear; // Strings to hold a specific time of day/year

@property NSString *inputClimbDifficulty; //Gets string from the text field


-(NSString *) convertToStringDay; // Given the integer value of timeOfDayPosition, this equates that position with an NSString  eg. 0 is morning.

-(NSString *) convertToStringYear; // This works the same as above but for the time of year

-(void) addCragToArray: (Crag *) crag; // Method to add a crag object to an array dependant on the crag timeOfDay, cragTimeOFYear, and their respective picker positions



@end
