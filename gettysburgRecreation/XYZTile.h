//
//  XYZTile.h
//  gettysburgRecreation
//
//  Created by elmira on 2/8/14.
//
//

#import <Foundation/Foundation.h>
#import "XYZRegiment.h"

@interface XYZTile : NSObject


// Typedef for the terrain of tiles.
typedef NS_ENUM(NSUInteger, TileTerrain) {
    TileTerrainField = 0,
    TileTerrainHill = 1,
    TileTerrainTree = 2,
    TileTerrainWater = 3
    // Add more as needed.
};

// The elevation of the terrain on the tile
@property float elevation;

// The x and y location of the tile
@property int xLocation;
@property int yLocation;

// How the speed of a regiment is affected by the terrian
@property float movementSpeedMultiplier;

// How the terrain aids or hinders a regiment's combat
@property float combatMultiplier;

// Terrain of this tile (for art purposes)
@property TileTerrain terrain;

// Who is on this tile?  Null if nobody.
@property XYZRegiment * occupier;

// A factory method that creates Tile objects
- (id)initWithValues:(float)elevation movementSpeedMultiplier:(float)movementSpeedMultiplier combatMultiplier:(float)combatMultiplier terrain:(TileTerrain)terrain;


@end
