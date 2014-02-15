//
//  XYZTile.m
//  gettysburgRecreation
//
//  Created by elmira on 2/8/14.
//
//

#import "XYZTile.h"

@implementation XYZTile

- (id)initWithValues:(float)elevation movementSpeedMultiplier:(float)movementSpeedMultiplier combatMultiplier:(float)combatMultiplier terrain:(TileTerrain)terrain{
    self = [super init];
    if (self) {
        self.elevation = elevation;
        self.movementSpeedMultiplier = movementSpeedMultiplier;
        self.combatMultiplier = combatMultiplier;
        self.terrain = terrain;
    }
    return self;
}

@end
