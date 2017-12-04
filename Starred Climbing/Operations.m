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
        
        NSString *morning = @"Moring";
        NSString *afternoon = @"Afternoon";
        NSString *evening = @"Evening";
        
        NSString *winter = @"Winter";
        NSString *spring = @"Spring";
        NSString *summer = @"Summer";
        NSString *autumn = @"Autumn";
        
        self.timeOfDayArray = [NSArray arrayWithObjects: morning, afternoon, evening, nil];
        self.timOfYearArray = [NSArray arrayWithObjects: winter, spring, summer, autumn, nil];
    
        
    }
    return self;
}

/*
-(void) convertToStringDay: (NSString *) day {
    
    switch (_timeOfDayPosition) {
            
        case 0:
            
            day = @"Morning";
            
            break;
        case 1:
            
            day = @"Afternoon";
            
            break;
        case 2:
            
            day = @"Evening";
            
            break;
            
        default:
            break;
    }
    
    
}

-(void) convertToStringYear: (NSString *) year {
    
    switch (_timeOfYearPosition) {
            
        case 0:
            
            year = @"Morning";
            
            break;
        case 1:
            
            year = @"Afternoon";
            
            break;
        case 2:
            
            year = @"Evening";
            
            break;
            
        default:
            break;
    }
    
    
}
*/
-(NSString *) convertToStringDay {
 
    NSString *day;
    
    switch (_timeOfDayPosition) {
            
        case 0:
            
            day = @"Morning";
            
            break;
        case 1:
            
            day = @"Afternoon";
            
            break;
        case 2:
            
            day = @"Evening";
            
            break;
            
        default:
            break;
    }

    return day;
    
}

-(NSString *) convertToStringYear {
    
    NSString *year;
    
    switch (_timeOfDayPosition) {
            
        case 0:
            
            year = @"Morning";
            
            break;
        case 1:
            
            year = @"Afternoon";
            
            break;
        case 2:
            
            year = @"Evening";
            
            break;
            
        default:
            break;
    }
    
    return year;
    
}



-(void) addCrag: (Crag *) crag {
    
    if(( [crag.cragTOY isEqualToString: self.convertToStringYear] && [crag.cragTOD isEqualToString: self.convertToStringDay] )) { // Compares the time of day/year for the crag and user selected
        
        [self.selectedCrags addObject: crag]; // Adds Crag object to a new array that is then used to populate the table view
        
    }
    
}





@end
