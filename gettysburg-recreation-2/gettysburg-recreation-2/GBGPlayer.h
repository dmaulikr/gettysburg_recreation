//
//  GBGPlayer.h
//  gettysburg-recreation-2
//
//  Created by Ellen Hui on 3/31/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GBGPlayer : NSObject

typedef NS_ENUM(NSUInteger, Rank) {
    Colonel = 0,
    BrigadierGeneral = 1,
    MajorGeneral = 2,
    General = 3
};

typedef NS_ENUM(NSUInteger, Loyalty) {
    theUnion = 0,
    theConfederacy = 1,
};


@property (nonatomic) Rank rank;
@property (nonatomic) Loyalty loyalty;

@property (nonatomic, strong) NSMutableArray *controlledRegiments;
@property (nonatomic, strong) NSMutableArray *aiRegiments;

// Custom initializer.
// FIXME: Turn this into default initializer?  Overwrite init?
-(id)initWithRank:(Rank)rank andSide:(Loyalty)side;

@end
