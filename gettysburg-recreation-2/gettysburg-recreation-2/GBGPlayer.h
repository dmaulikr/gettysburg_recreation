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


@property (nonatomic) Rank playerRank;
@property (nonatomic) Loyalty loyalty;

@property (nonatomic, strong) NSMutableArray *controlledRegiments;

-(NSMutableArray*)setupRegiments;

//@property (nonatomic, strong) NSMutableArray *aiRegiments;

// NOTE: This is implemented in subclasses.
//-(id)initWithRank:(Rank)rank andSide:(Loyalty)side;
-(id)initWithPlayerRank:(Rank)rank andSide:(Loyalty)side;


@end
