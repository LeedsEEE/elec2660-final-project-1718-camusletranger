//
//  SearchOperations.h
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 24/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import "TestDataModelSubclass.h"

@interface SearchOperations : TestDataModelSubclass


@property (nonatomic, strong) NSArray *timeOfDayArray, *timOfYearArray; // Populates the picker with possible time of day, and time of year selections

-(NSMutableArray *) addClimbToArray: (Climb *) climb;
-(NSMutableArray *) addCragToArray: (Crag *) crag;

-(Crag *) compareCragToPicker: (Crag *) comparedCrag;
@end
