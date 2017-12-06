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
        
        
        NSString *morning = @"Morning";
        NSString *afternoon = @"Afternoon";
        NSString *evening = @"Evening";
        
        NSString *winter = @"Winter";
        NSString *spring = @"Spring";
        NSString *summer = @"Summer";
        NSString *autumn = @"Autumn";
        
        self.timeOfDayArray = [NSArray arrayWithObjects: morning, afternoon, evening, nil];
        self.timOfYearArray = [NSArray arrayWithObjects: winter, spring, summer, autumn, nil];
        
        self.selectedArray = [NSMutableArray array];

        
        self.crags = [NSMutableArray array];
        
        self.crags = [NSMutableArray array];
        
        Crag *dinasCromlech = [[Crag alloc] init];
        
        dinasCromlech.cragName = @"Dinas Cromlechh";
        dinasCromlech.cragGuidebook = @"Llanberis";
        dinasCromlech.cragRockType = @"Dolerite";
        dinasCromlech.cragTOD = @"Morning";
        dinasCromlech.cragTOY = @"Winter";
        
        
        //[dinasCromlech setCragName:@"Cromlech" andGuideBook:@"Llanberis Pass, North Wales Rock" andRockType: @"Dolorite" andTOD:@"Morning" andTOY:@"Winter"];
        Crag *clogwynYrGrochan = [[Crag alloc] init];
        clogwynYrGrochan.cragName = @"Clogwyn Y Grochan";
        clogwynYrGrochan.cragGuidebook = @"Llanberis";
        clogwynYrGrochan.cragRockType = @"Dolerite";
        clogwynYrGrochan.cragTOY = @"Winter";
        clogwynYrGrochan.cragTOD = @"Afternooon";
        
        
        // [clogwynYrGrochan setCragName:@"Clogwyn Yr Grochan" andGuideBook:@"Llanberis Pass, North Wales Rock" andRockType:@"Dolorite" andTOD:@"Afternoon" andTOY:@"Winter"];
        Crag *carregWastad = [[Crag alloc] init];
        
        carregWastad.cragName = @"Carreg Wastad";
        carregWastad.cragGuidebook = @"Llanberis";
        carregWastad.cragTOD = @"Evening";
        carregWastad.cragTOY = @"Winter";
        
        
        //[carregWastad setCragName:@"Carreg Wastad" andGuideBook:@"Llanberis Pass, North Wales Rock"  andRockType:@"Dolorite" andTOD:@"Evening" andTOY:@"Winter"];
        Crag *stanagePopular = [[Crag alloc] init];
        stanagePopular.cragName = @"Stanage Popular";
        stanagePopular.cragGuidebook = @"Stanage";
        stanagePopular.cragTOD = @"Morning";
        stanagePopular.cragTOY = @"Spring";
        
        //[stanagePopular setCragName:@"Stanage Popular" andGuideBook:@"Lancashire Grit" andRockType:@"Grit" andTOD:@"Morning" andTOY:@"Spring"];
        Crag *craigBwlchYMoch = [[Crag alloc] init];
        
        craigBwlchYMoch.cragName = @"Craig Bwlch Y Moch";
        craigBwlchYMoch.cragGuidebook = @"Tremadog";
        craigBwlchYMoch.cragTOY = @"Spring";
        craigBwlchYMoch.cragTOD = @"Afternoon";
        
        
        // [craigBwlchYMoch setCragName:@"Craig Bwlch Y Moch" andGuideBook: @"Tremadog" andRockType: @"Dolerite" andTOD: @"Afternoon" andTOY:@"Spring"];
        Crag *craigPantIfan = [[Crag alloc] init];
        
        craigPantIfan.cragName = @"Craig Pant Ifan";
        craigPantIfan.cragGuidebook = @"Tremadog";
        craigPantIfan.cragTOD = @"Evening";
        craigPantIfan.cragTOY = @"Spring";
        
        
        //[craigPantIfan setCragName:@"Craig Pant Ivan" andGuideBook: @"Tremadog" andRockType: @"Dolerite" andTOD:@"Evening" andTOY:@"Spring"];
        Crag *stGovensHeadEast = [[Crag alloc] init];
        
        stGovensHeadEast.cragName = @"St Govens Head East";
        stGovensHeadEast.cragGuidebook = @"Pembrokeshire";
        stGovensHeadEast.cragTOD = @"Morning";
        stGovensHeadEast.cragTOY = @"Summer";
        
        
        
        //[stGovensHeadEast setCragName:@"St Govens Head East" andGuideBook:@"Pembrokshire" andRockType:@"Limestone" andTOD:@"Morning" andTOY:@"Sumemer"];
        Crag *stGovensHeadWest = [[Crag alloc] init];
        
        stGovensHeadWest.cragName = @"St Govens Head West";
        stGovensHeadWest.cragGuidebook = @"Pembrokeshire";
        stGovensHeadWest.cragTOD = @"Afternoon";
        stGovensHeadWest.cragTOY = @"Summer";
        
        //[stGovensHeadWest setCragName:@"St Govens Head West" andGuideBook:@"Pembrokshire" andRockType:@"Limestone" andTOD:@"Afternoon" andTOY:@"Summer"];
        Crag *henloud = [[Crag alloc] init];
        
        henloud.cragName = @"Hencloud";
        henloud.cragGuidebook = @"Lancshire Grit";
        henloud.cragTOD = @"Evening";
        henloud.cragTOY = @"Summer";
        
        
        //[henloud setCragName:@"Hencloud" andGuideBook:@"Lancashire Grit" andRockType:@"Gritstone" andTOD:@"Evening" andTOY:@"Summer"];
        Crag *roaches = [[Crag alloc] init];
        
        roaches.cragName = @"Roaches";
        roaches.cragGuidebook = @"Lancashire Grit";
        roaches.cragTOD = @"Morning";
        roaches.cragTOY = @"Autumn";
        
        //[roaches setCragName:@"Roaches" andGuideBook:@"Lancashire Grit" andRockType:@"Gritstone" andTOD:@"Morning" andTOY:@"Aurumn"];
        Crag *craigDoris = [[Crag alloc] init];
        
        craigDoris.cragName = @"Craig Doris";
        craigDoris.cragGuidebook =@"Lleyn Peninsular";
        craigDoris.cragTOD = @"Afternoon";
        craigDoris.cragTOY = @"Autumn";
        
        //[craigDoris setCragName:@"Craig Doris" andGuideBook:@"Lleyn Guide" andRockType:@"Crumbly, scary but good if you're into that" andTOD: @"Afternoon" andTOY:@"Autumn"];
        Crag *easterIslandGully = [[Crag alloc] init];
        
        easterIslandGully.cragName = @"Easterisland Gully";
        easterIslandGully.cragGuidebook = @"Gogarth Norht";
        easterIslandGully.cragTOD = @"Afternoon";
        easterIslandGully.cragTOY = @"Autumn";
        
        
        //[easterIslandGully setCragName:@"Easter Island Gully" andGuideBook:@"Gogarth North" andRockType:@"Quartzite" andTOD:@"Afternoon" andTOY:@"Autumn"];
        
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
        
        
        self.climbs = [NSMutableArray array];
        Climb *cenotaph = [[Climb alloc] init];
        
        cenotaph.climbAtCrag = @"Dinas Cromlech";
        cenotaph.climbName = @"Cenotaph";
        cenotaph.climbDifficulty = @"E15c";
        cenotaph.climbQuality = @"***";
        
      
        Climb *cemetryGates = [[Climb alloc] init];
        
        cemetryGates.climbAtCrag = @"Dinas Cromlech";
        cemetryGates.climbName = @"Cemetry Gates";
        cemetryGates.climbDifficulty = @"E15c";
        cemetryGates.climbQuality = @"***";
     
       ;
       
        Climb *ivySepulchre = [[Climb alloc] init];
        
        ivySepulchre.climbAtCrag = @"Dinas Cromlech";
        ivySepulchre.climbName = @"Ivy Sepulchre";
        ivySepulchre.climbDifficulty = @"E15b";
        ivySepulchre.climbQuality = @"*";
        
        Climb *flyingButtress  = [[Climb alloc] init];
        
        flyingButtress.climbAtCrag = @"Dinas Cromlech";
        flyingButtress.climbName = @"Flying Buttress";
        flyingButtress.climbDifficulty = @"VD";
        flyingButtress.climbQuality = @"***";
        
        Climb *spiralStairs = [[Climb alloc] init];
        
        spiralStairs.climbAtCrag = @"Dinas Cromlech";
        spiralStairs.climbName = @"Spiral Stairs";
        spiralStairs.climbDifficulty = @"VD";
        spiralStairs.climbQuality = @"***";
        
        Climb *sabreCut  = [[Climb alloc] init];
        
        sabreCut.climbAtCrag = @"Dinas Cromlech";
        sabreCut.climbName = @"Sabre Cut";
        sabreCut.climbDifficulty = @"VS4c";
        sabreCut.climbQuality = @"**";
        

      
        
        Climb *cobwebCrack = [[Climb alloc] init];
        
        cobwebCrack.climbAtCrag = @"Dinas Cromlech";
        cobwebCrack.climbName = @"Cobweb crack";
        cobwebCrack.climbDifficulty = @"VS5a";
        cobwebCrack.climbQuality = @"**";
        
        Climb *noahsWarning  = [[Climb alloc] init];
        
        noahsWarning.climbAtCrag = @"Dinas Cromlech";
        noahsWarning.climbName = @"Noah's Warning";
        noahsWarning.climbDifficulty = @"VS5a";
        noahsWarning.climbQuality = @"**";
        Climb *theThing  = [[Climb alloc] init];
        
        theThing.climbAtCrag = @"Dinas Cromlech";
        theThing.climbName = @"The Thing";
        theThing.climbDifficulty = @"E25b";
        theThing.climbQuality = @"***";
        Climb *theMonster = [[Climb alloc] init];
        
        theMonster.climbAtCrag = @"Dinas Cromlech";
        theMonster.climbName = @"The Monster";
        theMonster.climbDifficulty = @"E25c";
        theMonster.climbQuality = @"**";
        Climb *grond = [[Climb alloc] init];
        
        grond.climbAtCrag = @"Dinas Cromlech";
        grond.climbName = @"Grond";
        grond.climbDifficulty = @"E25b";
        grond.climbQuality = @"*";
        Climb *leftWall  = [[Climb alloc] init];
        
        leftWall.climbAtCrag = @"Dinas Cromlech";
        leftWall.climbName = @"Left Wall";
        leftWall.climbDifficulty = @"E25b";
        leftWall.climbQuality = @"***";
        Climb *foil = [[Climb alloc] init];
        
        foil.climbAtCrag = @"Dinas Cromlech";
        foil.climbName = @"Foil";
        foil.climbDifficulty = @"E15b";
        foil.climbQuality = @"***";
        Climb *memoryLane = [[Climb alloc] init];
        
        memoryLane.climbAtCrag = @"Dinas Cromlech";
        memoryLane.climbName = @"Memory Lane";
        memoryLane.climbDifficulty = @"E35c";
        memoryLane.climbQuality = @"***";
        Climb *resurection = [[Climb alloc] init];
        
        resurection.climbAtCrag = @"Dinas Cromlech";
        resurection.climbName = @"Resurection";
        resurection.climbDifficulty = @"E46a";
        resurection.climbQuality = @"***";
        Climb *rightWall = [[Climb alloc] init];
        
        rightWall.climbAtCrag = @"Dinas Cromlech";
        rightWall.climbName = @"Right Wall";
        rightWall.climbDifficulty = @"E56a";
        rightWall.climbQuality = @"***";
        Climb *atomicHotrod = [[Climb alloc] init];
        
        atomicHotrod.climbAtCrag = @"Dinas Cromlech";
        atomicHotrod.climbName = @"Atomic Hotrod";
        atomicHotrod.climbDifficulty = @"E56b";
        atomicHotrod.climbQuality = @"***";
        Climb *lordOfTheFlies = [[Climb alloc] init];
        
        lordOfTheFlies.climbAtCrag = @"Dinas Cromlech";
        lordOfTheFlies.climbName = @"Lord Of The Flies";
        lordOfTheFlies.climbDifficulty = @"E66a";
        lordOfTheFlies.climbQuality = @"***";
        
      

        
        Climb *nea  = [[Climb alloc] init];
        
        nea.climbAtCrag = @"Clogwyn Y Grochan";
        nea.climbName = @"Nea";
        nea.climbDifficulty = @"VS4b";
        nea.climbQuality = @"**";
        Climb *phantomRib = [[Climb alloc] init];
        
        phantomRib.climbAtCrag = @"Clogwyn Y Grochan";
        phantomRib.climbName = @"Phantom Rib";
        phantomRib.climbDifficulty = @"VS4c";
        phantomRib.climbQuality = @"***";
        Climb *brantDirect = [[Climb alloc] init];
        
        brantDirect.climbAtCrag = @"Clogwyn Y Grochan";
        brantDirect.climbName = @"Brant Direct";
        brantDirect.climbDifficulty = @"HVS5a";
        brantDirect.climbQuality = @"***";
        Climb *spectre = [[Climb alloc] init];
        
        spectre.climbAtCrag = @"Clogwyn Y Grochan";
        spectre.climbName = @"Spectre";
        spectre.climbDifficulty = @"HVS5a";
        spectre.climbQuality = @"***";
        Climb *kaisergebirgeWall = [[Climb alloc] init];
        
        kaisergebirgeWall.climbAtCrag = @"Clogwyn Y Grochan";
        kaisergebirgeWall.climbName = @"Kaisergebirge Wall";
        kaisergebirgeWall.climbDifficulty = @"HVS5b";
        kaisergebirgeWall.climbQuality = @"***";
        Climb *karwendalWall = [[Climb alloc] init];
        
        karwendalWall.climbAtCrag = @"Clogwyn Y Grochan";
        karwendalWall.climbName = @"Karwendal Wall";
        karwendalWall.climbDifficulty = @"HVS5b";
        karwendalWall.climbQuality = @"**";
        Climb *sickle = [[Climb alloc] init];
        
        sickle.climbAtCrag = @"Clogwyn Y Grochan";
        sickle.climbName = @"Sickle";
        sickle.climbDifficulty = @"HVS5b";
        sickle.climbQuality = @"**";
        
        Climb *hangover = [[Climb alloc] init];
        
        hangover.climbAtCrag = @"Clogwyn Y Grochan";
        hangover.climbName = @"Hangover";
        hangover.climbDifficulty = @"E15b";
        hangover.climbQuality = @"*";
        Climb *slapeDirect = [[Climb alloc] init];
        
        slapeDirect.climbAtCrag = @"Clogwyn Y Grochan";
        slapeDirect.climbName = @"Slape Direct";
        slapeDirect.climbDifficulty = @"E25b";
        slapeDirect.climbQuality = @"**";
        Climb *firstAmendment = [[Climb alloc] init];
        
        firstAmendment.climbAtCrag = @"Clogwyn Y Grochan";
        firstAmendment.climbName = @"First Amendment";
        firstAmendment.climbDifficulty = @"E25c";
        firstAmendment.climbQuality = @"**";
        Climb *spectrum = [[Climb alloc] init];
        
        spectrum.climbAtCrag = @"Clogwyn Y Grochan";
        spectrum.climbName = @"Spectrum";
        spectrum.climbDifficulty = @"E25c";
        spectrum.climbQuality = @"**";
        Climb *strollOn = [[Climb alloc] init];
        
        strollOn.climbAtCrag = @"Clogwyn Y Grochan";
        strollOn.climbName = @"Stroll On";
        strollOn.climbDifficulty = @"E36a";
        strollOn.climbQuality = @"***";
        Climb *quazar = [[Climb alloc] init];
        
        quazar.climbAtCrag = @"Clogwyn Y Grochan";
        quazar.climbName = @"Quazar";
        quazar.climbDifficulty = @"E36a";
        quazar.climbQuality = @"***";
        Climb *quantumjump = [[Climb alloc] init];
        
        quantumjump.climbAtCrag = @"Clogwyn Y Grochan";
        quantumjump.climbName = @"Quantum Jump";
        quantumjump.climbDifficulty = @"E56b";
        quantumjump.climbQuality = @"***";
        Climb *cockBlock = [[Climb alloc] init];
        
        cockBlock.climbAtCrag = @"Clogwyn Y Grochan";
        cockBlock.climbName = @"Cock Block";
        cockBlock.climbDifficulty = @"E56b";
        cockBlock.climbQuality = @"***";
        
        Climb *winkle = [[Climb alloc] init];
        
        winkle .climbAtCrag = @"Carreg Wastad";
        winkle .climbName = @"Winkle";
        winkle .climbDifficulty = @"VD";
        winkle .climbQuality = @"***";
        Climb *crackstoneRib = [[Climb alloc] init];
        
        crackstoneRib.climbAtCrag = @"Carreg Wastad";
        crackstoneRib.climbName = @"Crackstone Rib";
        crackstoneRib.climbDifficulty = @"S";
        crackstoneRib.climbQuality = @"***";
        Climb *skylon = [[Climb alloc] init];
        
        skylon.climbAtCrag = @"Carreg Wastad";
        skylon.climbName = @"Skylon";
        skylon.climbDifficulty = @"HS4b";
        skylon.climbQuality = @"***";
        Climb *shadowWall = [[Climb alloc] init];
        
        shadowWall.climbAtCrag = @"Carreg Wastad";
        shadowWall.climbName = @"Shadow Wall";
        shadowWall.climbDifficulty = @"VS4c";
        shadowWall.climbQuality = @"***";
        Climb *ribstoneCrack = [[Climb alloc] init];
        
        ribstoneCrack.climbAtCrag = @"Carreg Wastad";
        ribstoneCrack.climbName = @"Ribstone Crack";
        ribstoneCrack.climbDifficulty = @"VS4c";
        ribstoneCrack.climbQuality = @"***";
        Climb *overhangingChimney = [[Climb alloc] init];
        
        overhangingChimney.climbAtCrag = @"Carreg Wastad";
        overhangingChimney.climbName = @"Overhanging Chimney";
        overhangingChimney.climbDifficulty = @"VS4c";
        overhangingChimney.climbQuality = @"***";
        Climb *yellowCrack = [[Climb alloc] init];
        
        yellowCrack.climbAtCrag = @"Carreg Wastad";
        yellowCrack.climbName = @"Yellow Crack";
        yellowCrack.climbDifficulty = @"HVS5a";
        yellowCrack.climbQuality = @"***";
        Climb *overlappingWall = [[Climb alloc] init];
        
        overlappingWall.climbAtCrag = @"Carreg Wastad";
        overlappingWall.climbName = @"Overlapping Wall";
        overlappingWall.climbDifficulty = @"E15b";
        overlappingWall.climbQuality = @"***";
        Climb *oldHolborn = [[Climb alloc] init];
      
        oldHolborn.climbAtCrag = @"Carreg Wastad";
        oldHolborn.climbName = @"Old Holborn";
        oldHolborn.climbDifficulty = @"E15b";
        oldHolborn.climbQuality = @"***";
        Climb *erosionGrooveDirect = [[Climb alloc] init];
        
        erosionGrooveDirect.climbAtCrag = @"Carreg Wastad";
        erosionGrooveDirect.climbName = @"Erosion Groove Direct";
        erosionGrooveDirect.climbDifficulty = @"E25c";
        erosionGrooveDirect.climbQuality = @"***";
        Climb *zangorilla = [[Climb alloc] init];
        
        zangorilla.climbAtCrag = @"Carreg Wastad";
        zangorilla.climbName = @"Zangorilla";
        zangorilla.climbDifficulty = @"E46a";
        zangorilla.climbQuality = @"***";
        
    
        
        
        Climb *littleWomen = [[Climb alloc] init];
        
        littleWomen.climbAtCrag = @"Stanage Popular";
        littleWomen.climbName = @"Little Women";
        littleWomen.climbDifficulty = @"E77a";
        littleWomen.climbQuality = @"***";
        Climb *grooveIsInTheHeart = [[Climb alloc] init];
        
        grooveIsInTheHeart.climbAtCrag = @"Stanage Popular";
        grooveIsInTheHeart.climbName = @"Groove Is In The Heart";
        grooveIsInTheHeart.climbDifficulty = @"E77a";
        grooveIsInTheHeart.climbQuality = @"***";
        Climb *shineOn = [[Climb alloc] init];
        
        shineOn.climbAtCrag = @"Stanage Popular";
        shineOn.climbName = @"Shine On";
        shineOn.climbDifficulty = @"E76c";
        shineOn.climbQuality = @"***";
        Climb *blackCarBurning = [[Climb alloc] init];
        
        blackCarBurning.climbAtCrag = @"Stanage Popular";
        blackCarBurning.climbName = @"Black Car Burning";
        blackCarBurning.climbDifficulty = @"E76c";
        blackCarBurning.climbQuality = @"**";
        Climb *cemetryWaits = [[Climb alloc] init];
        
        cemetryWaits.climbAtCrag = @"Stanage Popular";
        cemetryWaits.climbName = @"Cemetary Waits";
        cemetryWaits.climbDifficulty = @"E76c";
        cemetryWaits.climbQuality = @"**";
        Climb *warmLove = [[Climb alloc] init];
        
        warmLove.climbAtCrag = @"Stanage Popular";
        warmLove.climbName = @"Warm Love";
        warmLove.climbDifficulty = @"E67a";
        warmLove.climbQuality = @"**";
        Climb *carpeDiem = [[Climb alloc] init];
        
        carpeDiem.climbAtCrag = @"Stanage Popular";
        carpeDiem.climbName = @"Carpe Diem";
        carpeDiem.climbDifficulty = @"E66c";
        carpeDiem.climbQuality = @"**";
        Climb *wallOfStange = [[Climb alloc] init];
        
        wallOfStange.climbAtCrag = @"Stanage Popular";
        wallOfStange.climbName = @"Wall Of Sound";
        wallOfStange.climbDifficulty = @"E66b";
        wallOfStange.climbQuality = @"***";
        Climb *stanageWithoutOxygen = [[Climb alloc] init];
        
        stanageWithoutOxygen.climbAtCrag = @"Stanage Popular";
        stanageWithoutOxygen.climbName = @"Strange Without Oxygen";
        stanageWithoutOxygen.climbDifficulty = @"E56c";
        stanageWithoutOxygen.climbQuality = @"**";
        Climb *headlessChicken = [[Climb alloc] init];
        
        headlessChicken.climbAtCrag = @"Stanage Popular";
        headlessChicken.climbName = @"Headless Chicken";
        headlessChicken.climbDifficulty = @"E56b";
        headlessChicken.climbQuality = @"**";
        Climb *bocNoButress = [[Climb alloc] init];
        
        bocNoButress.climbAtCrag = @"Stanage Popular";
        bocNoButress.climbName = @"Boc No Buttress";
        bocNoButress.climbDifficulty = @"EE56a";
        bocNoButress.climbQuality = @"**";
        Climb *snugAsAThugOnAJug = [[Climb alloc] init];
        
        snugAsAThugOnAJug.climbAtCrag = @"Stanage Popular";
        snugAsAThugOnAJug.climbName = @"Snug as a Thug on a Jug";
        snugAsAThugOnAJug.climbDifficulty = @"E46b";
        snugAsAThugOnAJug.climbQuality = @"***";

    
       
     /*  Climb * = [[Climb alloc] init];
        
        .climbAtCrag = ;
        .climbName = ;
        .climbDifficulty = ;
        .climbQuality = ;
        */
        
        
        
        
     /*   [stanagePopularClimbs setName:@"Off With His Head!" andDifficulty:@"E46b" andQuality:@"***"];
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
        
        */
        
    }
    return self;
}

-(void) addCragToArray: (Crag *) crag {
    
    int i = 0;
    
    for (i = 0; i < [self.data.crags count]; ++i) { // Establishes number of crags in datamodel for the for loop
        
        Crag *crag = [self.data.crags objectAtIndex:i];
        
        
        if ([crag.cragTOD isEqualToString: self.data.convertToStringDay] && [crag.cragTOY isEqualToString: self.data.convertToStringYear] ) {
            
            [self.selectedArray addObject:[self.data.crags objectAtIndex:i]];
            // NSLog(@"Crag Name: %@", crag.cragName);
            
        }
        
        
    }

    
}

-(void) addCragArray {
    
    
    int i = 0;
    
    for (i = 0; i < [self.data.crags count]; ++i) { // Establishes number of crags in datamodel for the for loop
        
        Crag *crag = [self.data.crags objectAtIndex:i];
        
        
        if ([crag.cragTOD isEqualToString: self.data.convertToStringDay] && [crag.cragTOY isEqualToString: self.data.convertToStringYear] ) {
            
            [self.selectedArray addObject:crag];
            // NSLog(@"Crag Name: %@", crag.cragName);
        }
    }
    
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



@end
