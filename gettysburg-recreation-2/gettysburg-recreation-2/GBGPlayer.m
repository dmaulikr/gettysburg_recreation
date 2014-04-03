//
//  GBGPlayer.m
//  gettysburg-recreation-2
//
//  Created by Ellen Hui on 3/31/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import "GBGPlayer.h"
#import "GBGRegiment.h"

@implementation GBGPlayer

-(id)initWithRank:(Rank)rank andSide:(Loyalty)side {
    self = [super init];
    
    self.rank = rank;
    self.loyalty = side;
    /*
    
    switch(rank) {
        case 0:
            self.rank = Colonel;
            break;
        case 1:
            self.rank = BrigadierGeneral;
            break;
        case 2:
            self.rank = MajorGeneral;
            break;
        case 3:
            self.rank = General;
            break;
    }
    
    switch (side) {
        case 0:
            self.loyalty = theUnion;
            break;
        case 1:
            self.loyalty = theConfederacy;
            break;
    }
     */
    
    return self;
}

@end
