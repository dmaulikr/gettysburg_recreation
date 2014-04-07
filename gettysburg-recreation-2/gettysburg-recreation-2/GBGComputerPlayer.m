//
//  GBGComputerPlayer.m
//  gettysburg-recreation-2
//
//  Created by Ellen Hui on 4/4/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import "GBGComputerPlayer.h"

@implementation GBGComputerPlayer


-(NSMutableArray*)setupRegiments{
    NSMutableArray *regs = [[NSMutableArray alloc] init];
    
    if (self.playerRank == Colonel) {
        GBGRegiment *tmpRegiment = [[GBGRegiment alloc]initWithRegimentType:Infantry andOrigin:CGPointMake(0, 0)];
        [regs addObject:tmpRegiment];
        
    } else if (self.playerRank == BrigadierGeneral) {
        for (int i=0; i<3; i++) {
            [regs addObject:[[GBGRegiment alloc]initWithRegimentType:Infantry andOrigin:CGPointMake(0, i * 10)]];
        }
    } else if (self.playerRank == MajorGeneral) {
        for (int i=0; i<9; i++) {
            [regs addObject:[[GBGRegiment alloc]initWithRegimentType:Infantry andOrigin:CGPointMake(0, i * 10)]];
        }
    } else if (self.playerRank == General) {
        for (int i=0; i<30; i++) {
            [regs addObject:[[GBGRegiment alloc]initWithRegimentType:Infantry andOrigin:CGPointMake(0, i * 10)]];
        }
    } else {
        // Should never get to this case.
        regs = NULL;
    }
    
    return regs;
}

@end
