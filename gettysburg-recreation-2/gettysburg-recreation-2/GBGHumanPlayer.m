//
//  GBGHumanPlayer.m
//  gettysburg-recreation-2
//
//  Created by Ellen Hui on 4/4/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import "GBGHumanPlayer.h"

@interface GBGHumanPlayer ()
//-(NSMutableArray*)setupHumanRegiments:(Rank)rank;
@end

@implementation GBGHumanPlayer
-(id)initWithRank:(Rank)rank andSide:(Loyalty)side {
    self = [super init];
    
    self.playerRank = rank;
    //self.rank = rank;

    self.loyalty = side;
    
    self.controlledRegiments = [self setupRegiments];
    
    NSLog(@"I am a %d", self.playerRank);
    NSLog(@"and I have %d regiments", self.controlledRegiments.count);
    
    return self;
}

-(NSMutableArray*)setupRegiments{
    NSMutableArray *regs = [[NSMutableArray alloc] init];
    
    // FIXME: Later, when we know where to put regiments (ie. not in a line), should probably pass locations in.

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
