//
//  Crag.m
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 14/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import "Crag.h"

@implementation Crag

-(void) setCragName: (NSString *) name andGuideBook:(NSString *) guide andRockType:(NSString *) rock andTOD: (NSString *) tod andTOY:(NSString *) toy{
    
    name = _cragName;
    guide = _cragGuidebook;
    rock = _cragRockType;
    tod = _cragTOD; // Time of day
    toy = _cragTOY; // Time of year

}

@end
