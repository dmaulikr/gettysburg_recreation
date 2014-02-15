//
//  SHCBoard.h
//  SHCReversiGame
//
//  Created by elmira on 2/14/14.
//  Copyright (c) 2014 Colin Eberhardt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BoardCellState.h"


/** An 8x8 playing board */
@interface SHCBoard : NSObject

// gets the state of the cell at the given location
- (BoardCellState) cellStateAtColumn:(NSInteger)column andRow:(NSInteger)row;

// sets the state
- (void) setCellState:(BoardCellState)state forColumn:(NSInteger)column andRow:(NSInteger)row;

// clears the entire board
- (void) clearBoard;

@end
