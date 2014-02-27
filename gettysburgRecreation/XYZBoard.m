//
//  XYZBoard.m
//  gettysburgRecreation
//
//  Created by elmira on 2/9/14.
//
//

#import "XYZBoard.h"
//#import "Constants.h"
#import "XYZTile.h"

const int rows = 100;

const int columns = 100;

@implementation XYZBoard
{
    XYZTile * board[rows][columns];
}

- (id)initWithRows:(int)rows andColumns:(int)columns {
    self = [super init];
    if(self) {
        self.rows = rows;
        self.columns = columns;
    }
    return self;
}


- (XYZTile*)getTileAtRow:(int)row andColumn:(int)col {
    // Bounds checking
    if (row < 0 || col < 0 || row >= self.rows || col >= self.columns) {
        [NSException raise:NSRangeException format:@"row or column out of bounds"];
    }
    
    // We're legal, so return the tile.
    return board[row][col];
}




@end
