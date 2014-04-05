//
//  GBGHumanPlayer.h
//  gettysburg-recreation-2
//
//  Created by Ellen Hui on 4/4/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import "GBGPlayer.h"
#import "GBGRegiment.h"

@interface GBGHumanPlayer : GBGPlayer


@property (nonatomic) Rank rank;

-(id)initWithRank:(Rank)rank andSide:(Loyalty)side;

@end
