//
//  XYZInfantryRegiment.h
//  gettysburgRecreation
//
//  Created by Ellen Hui on 2/20/14.
//
//

#import "XYZRegiment.h"

@interface XYZInfantryRegiment : XYZRegiment

// The starting size of the infantry, in number of men
extern const int INFANTRY_START_SIZE;

// The movement speed of the infantry
@property float infantrySpeed;

// FIXME Infantry-type regiment.  Extends regiment
// Gets custom attack range, move range.  Maybe extra weakness/strength multipliers?
-(id)init;

@end
