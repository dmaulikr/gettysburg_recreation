//
//  XYZSoldier.h
//  gettysburgRecreation
//
//  Created by elmira on 2/25/14.
//  A class that represents a group of four soldiers.
//

#import <Foundation/Foundation.h>

@interface XYZSoldier : NSObject

// The coordinate location of the soldiers on the map
@property int xLocation;
@property int yLocation;

// The graphics icon representing the soldiers
// FIXME: Do not know the format of this yet

// A method that places the soldiers into a skirmish line
// FIXME should this return something? Maybe let user know they are now in a skirmish line?
- (void) formSkirmish:(XYZSoldier *)soldier numOfSoldiers:(int)numOfSoldiers;

@end
