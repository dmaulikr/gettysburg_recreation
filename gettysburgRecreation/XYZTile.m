//
//  XYZTile.m
//  gettysburgRecreation
//
//  Created by elmira on 2/8/14.
//
//

#import "XYZTile.h"

@implementation XYZTile

- (id)initWithValues:(CGFloat)elevation movementSpeedMultiplier:(CGFloat)movementSpeedMultiplier combatMultiplier:(CGFloat)combatMultiplier terrain:(NSString *)terrain{
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
