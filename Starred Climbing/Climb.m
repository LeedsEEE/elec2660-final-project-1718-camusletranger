//
//  Climb.m
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 14/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import "Climb.h"

@implementation Climb

-(void) setName: (NSString *) name andDifficulty: (NSString *) difficulty andQuality: (NSString *) quality {
    
    name = _climbName;
    quality = _climbQuality;
    difficulty = _climbDifficulty;
    
    
}
- (instancetype)initWith: (NSString *) name andDifficulty: (NSString *) difficulty andQuality: (NSString *) quality;

{
    self = [super init];
    if (self)
        
        [self setName: name andDifficulty: difficulty andQuality: quality];
    
    return self;
}



@end
