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


@property NSInteger  timeOfDay, timeOfYear;                  // Setters and getters for picker position relevent to time of day/year

@property NSString *day, *year;

@property (strong, nonatomic) NSMutableArray *selectedCrags; // Array made of crags selected by picker time of day/year selections

-(void) addCrag: (Crag *) crag;                              // Method to add climb to an array based on the picker selected crags


//@property NSString *morning, *afternoon, *evening, *winter, *spring, *summer, *autumn;

@end
