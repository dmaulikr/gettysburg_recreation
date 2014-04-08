//
//  GBGRegiment.h
//  gettysburg-recreation-2
//
//  Created by Ellen Hui on 3/31/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "GBGPlayer.h"

@interface GBGRegiment : NSObject

typedef NS_ENUM(NSUInteger, RegimentType) {
    Infantry = 0,
    Cavalry = 1,
    Artillery  = 2
};

typedef NS_ENUM(NSUInteger, Side) {
    theUnion = 0,
    theConfederacy = 1,
};


//@property (nonatomic, weak) GBGPlayer *owner;

@property (nonatomic) RegimentType regimentType;
@property (nonatomic) Side side;


@property (nonatomic) CGFloat health;           // Health/Hitpoints.  Mutable.
@property (nonatomic) CGFloat moveSpeed;        // Base speed.
@property (nonatomic) CGFloat combatStrength;   // How hard the regiment hits.

@property (nonatomic) CGRect position;          // CGRect structure includes both location and dimensions.


// This constructor will contain standard initializations for Infantry, Cavalry, and Artillery regiments.
// Any specialized values will have to be set manually (or with setters).
-(id)initWithRegimentType:(RegimentType)type andOrigin:(CGPoint)origin andSide:(Side)side;

/*
 * Returns an NSArray of equidistant points between the current location and the destination.
 * How many points there are is specified with the steps argument.
 */
-(NSArray *)getPathTo:(CGPoint)destination withNumSteps:(CGFloat)steps;

// TODO: Attack things.  Currently unimplemented.
-(void)attack:(GBGRegiment *)target;



@end
