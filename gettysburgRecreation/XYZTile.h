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
@property float elevation;

// The x and y location of the tile
@property int xLocation;
@property int yLocation;

// How the speed of a regiment is affected by the terrian
@property float movementSpeedMultiplier;

// How the terrain aids or hinders a regiment's combat
@property float combatMultiplier;

// A label for the type of terrain on the tile
@property NSString *terrain; 

// A factory method that creates Tile objects
- (id)initWithValues:(float)elevation movementSpeedMultiplier:(float)movementSpeedMultiplier combatMultiplier:(float)combatMultiplier terrain:(NSString *)terrain;

@end
