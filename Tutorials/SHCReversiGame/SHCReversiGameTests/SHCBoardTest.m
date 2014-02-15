//
//  SHCBoardTest.m
//  SHCReversiGame
//
//  Created by elmira on 2/14/14.
//  Copyright (c) 2014 Colin Eberhardt. All rights reserved.
//

#import "SHCBoardTest.h"
#import "SHCBoard.h"

@implementation SHCBoardTest

// checks that when the value of a cell is ‘set’, the same value is
// returned when you ‘get’ cell value.
- (void)test_SetCellState_setWIthValidCoords_cellStateIsChanged {
    SHCBoard *board = [[SHCBoard alloc] init];
    
    // set the state of one of the cells
    [board setCellState:BoardCellStateWhitePiece forColumn:4 andRow:5];
    
    // verify
    BoardCellState retrievedState = [board cellStateAtColumn:4 andRow:5];
    STAssertEquals(BoardCellStateWhitePiece, retrievedState, @"The cell should have been white!");
}
// checks that an exception is thrown if you try to set a cell
// that is outside of the bounds of the board.
- (void)test_setCellState_setWithInvalidCoords_exceptionWasThrown {
    SHCBoard *board = [[SHCBoard alloc] init];
    
    @try {
        // set the state of a cell at an invalid coordinate
        [board setCellState:BoardCellStateBlackPiece forColumn:10 andRow:5];
        
        // if an exception was not thrown, this line will be reached
        STFail(@"An exception should have been thrown!");
    }
    @catch (NSException *e) {
        
    }
}
@end
