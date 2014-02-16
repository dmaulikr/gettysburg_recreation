//
//  XYZPlayer.h
//  gettysburgRecreation
//
//  Created by Ellen Hui on 2/15/14.
//
//

#import <Foundation/Foundation.h>
#import "XYZRegiment.h"

@interface XYZPlayer : NSObject

typedef NS_ENUM(NSUInteger, Rank) {
    Colenel = 0,
    BrigadierGeneral = 1,
    MajorGeneral = 2,
    General = 3
};

// Name and rank.  Name might be customizable?
@property NSString * name;
@property Rank rank;

// Regiments commanded by the player.
@property NSMutableArray * regiments;

// Regiment you're looking at right now.  Null if nobody.
@property XYZRegiment * selectedRegiment;

@end
