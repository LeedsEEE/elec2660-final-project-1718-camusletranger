//
//  Operations.m
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 30/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import "Operations.h"

@implementation Operations

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        self.timeOfDayArray = [NSArray arrayWithObjects: @"Morning", @"Afternoon", @"Evening", nil];
        self.timOfYearArray = [NSArray arrayWithObjects: @"Winter", @"Spring", @"Summer", @"Autumn", nil];
        
    }
    return self;
}




-(void) addCrag: (Crag *) crag {
    
    if(( [crag.cragTOY isEqualToString: self.cragTOY] && [crag.cragTOD isEqualToString: self.cragTOD ] )) { // Compares the time of day/year for the crag and user selected
        
        [_selectedCrags addObject: crag]; // Adds Crag object to a new array that is then used to populate the table view
        
    }
    
}





@end
