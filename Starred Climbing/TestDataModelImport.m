//
//  TestDataModelImport.m
//  Starred Climbing
//
//  Created by Joshua Marshall [ll13jrm] on 23/11/2017.
//  Copyright © 2017 Joshua Marshall [ll13jrm]. All rights reserved.
//

#import "TestDataModelImport.h"

@implementation TestDataModelImport

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.crags = [NSMutableArray array];
        Crag *dinasCromlech = [[Crag alloc] init];
        Crag *clogwynYrGrochan = [[Crag alloc] init];
        Crag *carregWastad = [[Crag alloc] init];
        Crag *stanagePopular = [[Crag alloc] init];
        Crag *craigBwlchYMoch = [[Crag alloc] init];
        Crag *craigPantIfan = [[Crag alloc] init];
        Crag *stGovensHeadEast = [[Crag alloc] init];
        Crag *stGovensHeadWest = [[Crag alloc] init];
        Crag *henloud = [[Crag alloc] init];
        Crag *roaches = [[Crag alloc] init];
        Crag *craigDoris = [[Crag alloc] init];
        Crag *easterIslandGully = [[Crag alloc] init];
        
        [dinasCromlech setCragName:@"Cromlech" andGuideBook:@"Llanberis Pass, North Wales Rock" andRockType: @"Dolorite" andTOD:@"Morning" andTOY:@"Winter"];
        [clogwynYrGrochan setCragName:@"Clogwyn Yr Grochan" andGuideBook:@"Llanberis Pass, North Wales Rock" andRockType:@"Dolorite" andTOD:@"Afternoon" andTOY:@"Winter"];
        [carregWastad setCragName:@"Carreg Wastad" andGuideBook:@"Llanberis Pass, North Wales Rock"  andRockType:@"Dolorite" andTOD:@"Evening" andTOY:@"Winter"];
        [stanagePopular setCragName:@"Stanage Popular" andGuideBook:@"Lancashire Grit" andRockType:@"Grit" andTOD:@"Morning" andTOY:@"Spring"];
        [craigBwlchYMoch setCragName:@"Craig Bwlch Y Moch" andGuideBook: @"Tremadog" andRockType: @"Dolerite" andTOD: @"Afternoon" andTOY:@"Spring"];
        [craigPantIfan setCragName:@"Craig Pant Ivan" andGuideBook: @"Tremadog" andRockType: @"Dolerite" andTOD:@"Evening" andTOY:@"Spring"];
        [stGovensHeadEast setCragName:@"St Govens Head East" andGuideBook:@"Pembrokshire" andRockType:@"Limestone" andTOD:@"Morning" andTOY:@"Sumemer"];
        [stGovensHeadWest setCragName:@"St Govens Head West" andGuideBook:@"Pembrokshire" andRockType:@"Limestone" andTOD:@"Afternoon" andTOY:@"Summer"];
        [henloud setCragName:@"Hencloud" andGuideBook:@"Lancashire Grit" andRockType:@"Gritstone" andTOD:@"Evening" andTOY:@"Summer"];
        [roaches setCragName:@"Roaches" andGuideBook:@"Lancashire Grit" andRockType:@"Gritstone" andTOD:@"Morning" andTOY:@"Aurumn"];
        [craigDoris setCragName:@"Craig Doris" andGuideBook:@"Lleyn Guide" andRockType:@"Crumbly, scary but good if you're into that" andTOD: @"Afternoon" andTOY:@"Autumn"];
        [easterIslandGully setCragName:@"Easter Island Gully" andGuideBook:@"Gogarth North" andRockType:@"Quartzite" andTOD:@"Afternoon" andTOY:@"Autumn"];
        
        [self.crags addObject:dinasCromlech];     //index 0
        [self.crags addObject:clogwynYrGrochan];  //index 1
        [self.crags addObject:carregWastad];      //index 2
        [self.crags addObject:stanagePopular];    //index 3
        [self.crags addObject:craigBwlchYMoch];   //index 4
        [self.crags addObject:craigPantIfan];     //index 5
        [self.crags addObject:stGovensHeadEast];  //index 6
        [self.crags addObject:stGovensHeadWest];  //index 7
        [self.crags addObject:henloud];           //index 8
        [self.crags addObject:roaches];           //index 9
        [self.crags addObject:craigDoris];        //index 10
        [self.crags addObject:easterIslandGully]; //index 11
        
        
        
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
        [clogwynYrGrochanClimbs setName:@"Nea" andDifficulty:@"VS4b" andQuality:@"**"];
        [clogwynYrGrochanClimbs setName:@"Phantom Rib" andDifficulty:@"VS4c" andQuality:@"***"];
        [clogwynYrGrochanClimbs setName:@"Brant Direct" andDifficulty:@"HVS5a" andQuality:@"***"];
        [clogwynYrGrochanClimbs setName:@"Spectre" andDifficulty:@"HVS5a" andQuality:@"***"];
        [clogwynYrGrochanClimbs setName:@"Kaisergebirge Wall" andDifficulty:@"HVS5b" andQuality:@"***"];
        [clogwynYrGrochanClimbs setName:@"Karwendal Wall" andDifficulty:@"HVS5b" andQuality:@"**"];
        [clogwynYrGrochanClimbs setName:@"Sickle" andDifficulty:@"HVS5b" andQuality:@"**"];
        [clogwynYrGrochanClimbs setName:@"Hangover" andDifficulty:@"E15b" andQuality:@"*"];
        [clogwynYrGrochanClimbs setName:@"Slape Direct" andDifficulty:@"E25b" andQuality:@"**"];
        [clogwynYrGrochanClimbs setName:@"First Amendment" andDifficulty:@"E25c" andQuality:@"**"];
        [clogwynYrGrochanClimbs setName:@"Spectrum" andDifficulty:@"E25c" andQuality:@"**"];
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
        
        
        self.stanagePopularClimbs = [NSMutableArray array];
        Climb *stanagePopularClimbs = [[Climb alloc] init];
        [stanagePopularClimbs setName:@"Little Women" andDifficulty:@"E77a" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Groove Is In The Heart" andDifficulty:@"E77a" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Shine On" andDifficulty:@"E76c" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Black Car Burning" andDifficulty:@"E76c" andQuality:@"**"];
        [stanagePopularClimbs setName:@"Cemetary Waits" andDifficulty:@"E76c" andQuality:@"**"];
        [stanagePopularClimbs setName:@"Warm Love" andDifficulty:@"E67a" andQuality:@"**"];
        [stanagePopularClimbs setName:@"Carpe Diem" andDifficulty:@"E66c" andQuality:@"**"];
        [stanagePopularClimbs setName:@"Wall Of Sound" andDifficulty:@"E66b" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Strange Without Oxygen" andDifficulty:@"E56c" andQuality:@"**"];
        [stanagePopularClimbs setName:@"Headless Chicken" andDifficulty:@"E56b" andQuality:@"**"];
        [stanagePopularClimbs setName:@"Boc No Buttress" andDifficulty:@"EE56a" andQuality:@"**"];
        [stanagePopularClimbs setName:@"Snug as a Thug on a Jug" andDifficulty:@"E46b" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Off With His Head!" andDifficulty:@"E46b" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Chameleon" andDifficulty:@"E46b" andQuality:@"***"];
        [stanagePopularClimbs setName:@"The Asp" andDifficulty:@"E36a" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Tipler Direct" andDifficulty:@"E36a" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Censor" andDifficulty:@"E35c" andQuality:@"***"];
        [stanagePopularClimbs setName:@"The Guillotine" andDifficulty:@"E5c" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Black Hawk Bastion" andDifficulty:@"E35c" andQuality:@"**"];
        [stanagePopularClimbs setName:@"Ashes" andDifficulty:@"E35c" andQuality:@"**"];
        [stanagePopularClimbs setName:@"Cave Eliminate" andDifficulty:@"E26a" andQuality:@"**"];
        [stanagePopularClimbs setName:@"The Dangler" andDifficulty:@"E25c" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Wuthering" andDifficulty:@"E25b" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Yosemite Wall" andDifficulty:@"E25b" andQuality:@"**"];
        [stanagePopularClimbs setName:@"Desperation" andDifficulty:@"E16a" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Pedlars Rib" andDifficulty:@"E15c" andQuality:@"**"];
        [stanagePopularClimbs setName:@"Dark Continent" andDifficulty:@"E15c" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Swings" andDifficulty:@"E15c" andQuality:@"***"];
        [stanagePopularClimbs setName:@"The Link" andDifficulty:@"E15b" andQuality:@"***"];
        [stanagePopularClimbs setName:@"The Scoop" andDifficulty:@"HVS5b" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Congo River" andDifficulty:@"HVS5b" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Central Trinity Direct" andDifficulty:@"HVS5b" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Paucity" andDifficulty:@"HVS5b" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Good Friday" andDifficulty:@"HVS5b" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Whillans Pendulum and Black Magic" andDifficulty:@"HVS5b" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Mississipi Buttrss Direct" andDifficulty:@"VS4c" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Ellis's Eliminate" andDifficulty:@"VS4c" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Hargreaves' Original Route" andDifficulty:@"VS4c" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Central Trinity" andDifficulty:@"VS4c" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Martello Buttress" andDifficulty:@"VS4c" andQuality:@"***"];
        [stanagePopularClimbs setName:@"April Crack" andDifficulty:@"HS4b" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Manchester Buttress" andDifficulty:@"HS4b" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Byne's Route" andDifficulty:@"HS4b" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Castle Crack" andDifficulty:@"HS4b" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Balcony Buttress" andDifficulty:@"S" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Bishop's Route" andDifficulty:@"S" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Blackhawk Hell Route" andDifficulty:@"S" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Heaven Crack" andDifficulty:@"VD" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Hollybush Crack" andDifficulty:@"VD" andQuality:@"***"];
        [stanagePopularClimbs setName:@"Black Hawk Traverse Left" andDifficulty:@"VD" andQuality:@"**"];
        
        
    }
    return self;
}


@end
