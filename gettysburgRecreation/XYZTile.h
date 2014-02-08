//
//  XYZTile.h
//  gettysburgRecreation
//
//  Created by elmira on 2/8/14.
//
//

#import <Foundation/Foundation.h>

@interface XYZTile : NSObject

// The elevation of the terrain on the tile
@property CGFloat elevation;

// The x and y location of the tile
@property NSInteger xLocation;
@property NSInteger yLocation;

// How the speed of a regiment is affected by the terrian
@property CGFloat movementSpeedMultiplier;

// How the terrain aids or hinders a regiment's combat
@property CGFloat combatMultiplier;

// A label for the type of terrain on the tile
@property NSString *terrain;

// A factory method that creates Tile objects
+ (id)Tile:(CGFloat)elevation movementSpeedMultiplier:(CGFloat)movementSpeedMultiplier combatMultiplier:(CGFloat)combatMultiplier terrain:(NSString *)terrain;

@end
