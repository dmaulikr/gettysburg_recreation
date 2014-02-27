//
//  XYZBoard.h
//  gettysburgRecreation
//
//  Created by elmira on 2/9/14.
//
//

//#import "Constants.h"
#import <Foundation/Foundation.h>
#import "XYZTile.h"

@interface XYZBoard : NSObject

// The board size

@property int rows;
@property int columns;

// FIXME need this?
// A two-dimensional array that represents the board
// @property NSArray *board;


- (id)initWithRows:(int)rows andColumns:(int)columns;

// Get a tile by index, with array bounds checking.
-(XYZTile*)getTileAtRow:(int)row andColumn:(int)col;


@end
