//
//  Climb.h
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 14/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//
//----- CLIMB CLASS -----

//Class which attribute the properties for a climb instance
#import <Foundation/Foundation.h>

@interface Climb : NSObject

@property NSString *climbName, *climbDifficulty, *climbQuality, *climbAtCrag; //Properties of a climb

-(void) setName: (NSString *) name andDifficulty: (NSString *) difficulty andQuality: (NSString *) quality; // Method to set name, difficulty, and quality of climb and make it quicker to enter data into DataModel

@end
