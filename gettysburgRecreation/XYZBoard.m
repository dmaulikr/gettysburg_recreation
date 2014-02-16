//
//  XYZBoard.m
//  gettysburgRecreation
//
//  Created by elmira on 2/9/14.
//
//

#import "XYZBoard.h"
#import "Constants.h"
#import "XYZTile.h"

const int stupidheight= 100;

const int dumbwidth = 100;

@implementation XYZBoard
{
    XYZTile * board[stupidheight][dumbwidth];
}

- (id)initWithHeight:(int)height andWidth:(int)width {
    self = [super init];
    if(self) {
        self.height = height;
        self.width = width;
    }
    return self;
}


- (XYZTile*)getTileAtRow:(int)row andColumn:(int)col {
    // Bounds checking
    if (row < 0 || col < 0 || row >= self.height || col >= self.width) {
        [NSException raise:NSRangeException format:@"row or column out of bounds"];
    }
    
    // We're legal, so return the tile.
    return board[row][col];
}




@end
