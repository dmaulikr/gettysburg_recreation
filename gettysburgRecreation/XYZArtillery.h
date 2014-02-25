//
//  XYZArtilleryRegiment.h
//  gettysburgRecreation
//
//  Created by Ellen Hui on 2/20/14.
//
//

#import "XYZRegiment.h"

@interface XYZArtillery : XYZRegiment

// The number of batteries in the artillery
@property int numberOfBatteries;

// The number of brigades in the artillery
@property int numberOfBrigades; 

// The movement speed of the artillery
@property float artillerySpeed;

-(id)init;

@end
