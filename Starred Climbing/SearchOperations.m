//
//  SearchOperations.m
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 24/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import "SearchOperations.h"

@implementation SearchOperations

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
    
    [_selectedCrags addObject: crag];
    
}

-(Crag *) searchCrags: (NSString *) cragTime {
    
    int i;
    
    for (i = 0; i <= self.data.crags.count; ++i) {
     
        
        
    }
    }
    
}


@end
