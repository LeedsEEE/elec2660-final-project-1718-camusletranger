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
        
        NSString *morning = @"Morning";
        NSString *afternoon = @"Afternoon";
        NSString *evening = @"Evening";
        
        NSString *winter = @"Winter";
        NSString *spring = @"Spring";
        NSString *summer = @"Summer";
        NSString *autumn = @"Autumn";
        
        self.timeOfDayArray = [NSArray arrayWithObjects: morning, afternoon, evening, nil];
        self.timOfYearArray = [NSArray arrayWithObjects: winter, spring, summer, autumn, nil];
    
        self.selectedCrags = [NSMutableArray array];
        self.selectedCrags = [[NSMutableArray alloc] init];
        
    }
    return self;
}



-(NSString *) convertToStringDay {
 
    NSString *day;
    NSInteger positionDay = self.timeOfDayPosition;
    
    switch (positionDay) {
            
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
    NSInteger positionYear = self.timeOfYearPosition;
    
    switch (positionYear) {
            
        case 0:
            
            year = @"Winter";
            break;
            
        case 1:
            
            year = @"Spring";
            break;
            
        case 2:
            
            year = @"Summer";
            break;
            
        case 3:
            
            year = @"Autumn";
            break;
            
        default:
            break;
    }
    
    return year;
    
}



-(void) addCrag: (Crag *) crag {
    
        [self.selectedCrags addObject: crag]; // Adds Crag object to a new array that is then used to populate the table view
    
    
}
/*
-(void) convertToStringYeartime: (NSInteger) positionYear {
    
    NSString *year;
    
    switch (positionYear) {
            
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

-(void) convertToStringDaytime: (NSInteger) positionDay {
    
    NSString *day;
    
    switch (positionDay) {
            
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

}*/





@end
