//
//  Crag.h
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 14/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import "Climb.h"

@interface Crag : Climb

@property NSString *cragName, *cragGuidebook, *cragRockType, *cragTOD, *cragTOY; // cragTOD, and cragTOY are the optimal time of day, and time of year for climbing at the crag

@property (strong, nonatomic) NSMutableArray *climbsAtCrag; // An array of climbs specific to an instance of a crag

-(void) setCragName: (NSString *) name andGuideBook:(NSString *) guide andRockType:(NSString *) rock andTOD: (NSString *) tod andTOY:(NSString *) toy; //Custom method for faster input of data


@end
