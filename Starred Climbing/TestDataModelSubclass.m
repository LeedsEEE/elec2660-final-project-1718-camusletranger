//
//  TestDataModelSubclass.m
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 23/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import "TestDataModelSubclass.h"

@implementation TestDataModelSubclass

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.crags = [NSMutableArray array];
        Crag *dinasCromlech, *clogwynYrGrochan, *carregWastad = [[Crag alloc] init];
        [dinasCromlech setCragName:@"Cromlech" andGuideBook:@"Llanberis Pass, North Wales Rock" andRockType: @"Dolorite" andTOD:@"Mid Day" andTOY:@"Summer"];
        [clogwynYrGrochan setCragName:@"Clogwyn Yr Grochan" andGuideBook:@"Llanberis Pass, North Wales Rock" andRockType:@"Dolorite" andTOD:@"Midday" andTOY:@"Mid Summer"];
        [carregWastad setCragName:@"Carreg Wastad" andGuideBook:@"Llanberis Pass, North Wales Rock"  andRockType:@"Dolorite" andTOD:@"Afternoon" andTOY:@"Mid Summer"];
        
        self.dinasCromlechClimbs = [NSMutableArray array];
        Climb *dinasCromlechClimbs = [[Climb alloc] init];
        [dinasCromlechClimbs setName:@"Cenotaph" andDifficulty:@"E15b" andQuality:@"***"];
        [dinasCromlechClimbs setName:@"Cemetry Gates" andDifficulty:@"E15b" andQuality:@"**"];
        [dinasCromlechClimbs setName:@"Ivy Sepulchre" andDifficulty:@"E15b" andQuality:@"*"];
        [dinasCromlechClimbs setName:@"Flying Buttress" andDifficulty:@"VD" andQuality:@"***"];
        [dinasCromlechClimbs setName:@"Spiral Stairs" andDifficulty:@"VD" andQuality:@"***"];
        [dinasCromlechClimbs setName:@"Sabre Cut" andDifficulty:@"VS4c" andQuality:@"**"];
        [dinasCromlechClimbs setName:@"Cobweb crack" andDifficulty:@"VS5a" andQuality:@"**"];
        [dinasCromlechClimbs setName:@"Noah's Warning" andDifficulty:@"VS5a" andQuality:@"**"];
        [dinasCromlechClimbs setName:@"The Thing" andDifficulty:@"E25b" andQuality:@"***"];
        [dinasCromlechClimbs setName:@"The Monster" andDifficulty:@"E25c" andQuality:@"**"];
        [dinasCromlechClimbs setName:@"Grond" andDifficulty:@"E25b" andQuality:@"*"];
        [dinasCromlechClimbs setName:@"Left Wall" andDifficulty:@"E25b" andQuality:@"***"];
        [dinasCromlechClimbs setName:@"Foil" andDifficulty:@"E15b" andQuality:@"***"];
        [dinasCromlechClimbs setName:@"Memory Lane" andDifficulty:@"E35c" andQuality:@"***"];
        [dinasCromlechClimbs setName:@"Resurection" andDifficulty:@"E46a" andQuality:@"***"];
        [dinasCromlechClimbs setName:@"Right Wall" andDifficulty:@"E56a" andQuality:@"***"];
        [dinasCromlechClimbs setName:@"Atomic Hotrod" andDifficulty:@"E56b" andQuality:@"***"];
        [dinasCromlechClimbs setName:@"Lord Of The Flies" andDifficulty:@"E66a" andQuality:@"***"];
        
        self.clogwynYrGrochanClimbs = [NSMutableArray array];
        Climb *clogwynYrGrochanClimbs = [[Climb alloc] init];
        [clogwynYrGrochanClimbs setName:@"Brant" andDifficulty:@"VS4c" andQuality:@"***"];
        [clogwynYrGrochanClimbs setName:@"Nea" andDifficulty:@"VS4b" andQuality:@"***"];
        [clogwynYrGrochanClimbs setName:@"Phantom Rib" andDifficulty:@"VS4c" andQuality:@"***"];
        [clogwynYrGrochanClimbs setName:@"Brant Direct" andDifficulty:@"HVS5a" andQuality:@"***"];
        [clogwynYrGrochanClimbs setName:@"Spectre" andDifficulty:@"HVS5a" andQuality:@"***"];
        [clogwynYrGrochanClimbs setName:@"Kaisergebirge Wall" andDifficulty:@"HVS5b" andQuality:@"***"];
        [clogwynYrGrochanClimbs setName:@"Karwendal Wall" andDifficulty:@"HVS5b" andQuality:@"***"];
        [clogwynYrGrochanClimbs setName:@"Sickle" andDifficulty:@"HVS5b" andQuality:@"***"];
        [clogwynYrGrochanClimbs setName:@"Hangover" andDifficulty:@"E15b" andQuality:@"***"];
        [clogwynYrGrochanClimbs setName:@"Slape Direct" andDifficulty:@"E25b" andQuality:@"***"];
        [clogwynYrGrochanClimbs setName:@"First Amendment" andDifficulty:@"E25c" andQuality:@"***"];
        [clogwynYrGrochanClimbs setName:@"Spectrum" andDifficulty:@"E25c" andQuality:@"***"];
        [clogwynYrGrochanClimbs setName:@"Stroll On" andDifficulty:@"E36a" andQuality:@"***"];
        [clogwynYrGrochanClimbs setName:@"Quazar" andDifficulty:@"E36a" andQuality:@"***"];
        [clogwynYrGrochanClimbs setName:@"Quantum Jump" andDifficulty:@"E56b" andQuality:@"***"];
        [clogwynYrGrochanClimbs setName:@"Cock Block" andDifficulty:@"E56b" andQuality:@"***"];

        self.carregWastadClimbs = [NSMutableArray array];
        Climb *carregWastadClimbs = [[Climb alloc] init];
        
        [carregWastadClimbs setName:@"Winkle" andDifficulty:@"VD" andQuality:@"***"];
        [carregWastadClimbs setName:@"Crackstone Rib" andDifficulty:@"S" andQuality:@"***"];
        [carregWastadClimbs setName:@"Skylon" andDifficulty:@"HS4b" andQuality:@"***"];
        [carregWastadClimbs setName:@"Shadow Wall" andDifficulty:@"VS4c" andQuality:@"***"];
        [carregWastadClimbs setName:@"Ribstone Crack" andDifficulty:@"VS4c" andQuality:@"***"];
        [carregWastadClimbs setName:@"Overhanging Chimney" andDifficulty:@"VS4c" andQuality:@"***"];
        [carregWastadClimbs setName:@"Yellow Crack" andDifficulty:@"HVS5a" andQuality:@"***"];
        [carregWastadClimbs setName:@"Overlapping Wall" andDifficulty:@"E15b" andQuality:@"***"];
        [carregWastadClimbs setName:@"Old Holborn" andDifficulty:@"E15b" andQuality:@"***"];
        [carregWastadClimbs setName:@"Erosion Groove Direct" andDifficulty:@"E25c" andQuality:@"***"];
        [carregWastadClimbs setName:@"Zangorilla" andDifficulty:@"E46a" andQuality:@"***"];



        
    }
    return self;
}

@end
