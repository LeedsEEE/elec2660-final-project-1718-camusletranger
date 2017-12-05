//
//  Operations.h
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 30/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import "Crag.h"

@interface Operations : Crag
// ----- Methods for Sorting Crags -----
@property (nonatomic, strong) NSArray *timeOfDayArray;       // Populates the picker with possible time of day, and time of year selections

@property (nonatomic, strong) NSArray *timOfYearArray;       // Populates the picker with possible and time of year selections

@property NSInteger  timeOfDayPosition, timeOfYearPosition;                  // Setters and getters for picker position relevent to time of day/year

@property NSString *timeOfDay, *timeOfYear; // String to hold a specific time of day

// @property (strong, nonatomic) NSMutableArray *selectedCrags; // Array made of crags selected by picker time of day/year selections which will then be used to populate the table view


-(NSString *) convertToStringDay; // Given the integer value of timeOfDayPosition, this equates that position with an NSString  eg. 0 is morning. This value is then compared with that time of day for the crag, and along with the time of year, if true the crag is added to selected climbs


-(NSString *) convertToStringYear; // This works the same as above but for the time of year


// ----- Methods for Searching via Climb's Difficulty

@property NSString *inputClimbDifficulty; //Gets string from the text field




@end
