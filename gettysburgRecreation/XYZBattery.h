//
//  XYZBattery.h
//  gettysburgRecreation
//
//  Created by elmira on 2/23/14.
//  Different regiments/brigades are made up of different numbers of batteries.
//

#import <Foundation/Foundation.h>
# import "XYZBrigade.h"
#import "XYZSoldier.h" //FIXME may not need this

@interface XYZBattery : NSObject

// The number of guns in a battery (FIXME does this go here?)
extern const int NUMBER_OF_GUNS_IN_BATTERY;

// The brigade to which the battery belongs
@property XYZBrigade *owningBrigade;

@end
