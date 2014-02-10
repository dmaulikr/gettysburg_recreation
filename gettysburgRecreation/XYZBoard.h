//
//  XYZBoard.h
//  gettysburgRecreation
//
//  Created by elmira on 2/9/14.
//
//

#import <Foundation/Foundation.h>

@interface XYZBoard : NSObject

// The board size
@property NSInteger rows;
@property NSInteger coulmns;

// A two-dimensional array that represents the board
@property NSArray *board;

@end
