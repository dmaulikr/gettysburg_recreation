//
//  GBGPlayer.m
//  gettysburg-recreation-2
//
//  Created by Ellen Hui on 3/31/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import "GBGPlayer.h"
#import "GBGRegiment.h"

@interface GBGPlayer ()
@end


@implementation GBGPlayer

-(NSMutableArray*)setupRegiments {
    // Error!  This should ALWAYS be overridden.
    return NULL;
}


-(id)initWithPlayerRank:(Rank)rank andSide:(Loyalty)side {
    self = [super init];
    
    self.playerRank = rank;
    //self.rank = rank;
    
    self.loyalty = side;
    
    self.controlledRegiments = [self setupRegiments];
    
    NSLog(@"I am a %d", self.playerRank);
    NSLog(@"and I have %d regiments", self.controlledRegiments.count);
    
    return self;
}

@end
