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
@property (strong, nonatomic) NSMutableArray *climbs; // An array of climb instances

@property (strong, nonatomic) NSMutableArray *dinasCromlechClimbs, *clogwynYrGrochanClimbs, *carregWastadClimbs, *stanagePopularClimbs; // An array of climbs at specific crags



@property (strong, nonatomic) NSMutableArray *selectedArray;
@property (strong, nonatomic) TestDataModelImport *data;

// ----- Methods for Sorting Crags -----
@property (nonatomic, strong) NSArray *timeOfDayArray;       // Populates the picker with possible time of day, and time of year selections

@property (nonatomic, strong) NSArray *timOfYearArray;       // Populates the picker with possible and time of year selections

@property NSInteger  timeOfDayPosition, timeOfYearPosition;                  // Setters and getters for picker position relevent to time of day/year

@property NSString *timeOfDay, *timeOfYear; // String to hold a specific time of day
@property NSString *inputClimbDifficulty; //Gets string from the text field

// @property (strong, nonatomic) NSMutableArray *selectedCrags; // Array made of crags selected by picker time of day/year selections which will then be used to populate the table view


-(NSString *) convertToStringDay; // Given the integer value of timeOfDayPosition, this equates that position with an NSString  eg. 0 is morning. This value is then compared with that time of day for the crag, and along with the time of year, if true the crag is added to selected climbs


-(NSString *) convertToStringYear; // This works the same as above but for the time of year
-(Crag *) cragForArray;
-(void) addCragToArray: (Crag *) crag;
-(void) addCragArray;

-(void) setCragForComparison: (Crag *) crag;
-(void) setClimbForComparison: (Climb *) climb;
-(Crag *) cragForComparison;
-(Climb *) climbForComparison;
-(NSInteger) numberOfClimbs;
-(void) setNumberOfClimbs: (NSInteger) number;


@end
