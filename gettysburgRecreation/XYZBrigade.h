//
//  XYZBrigade.h
//  gettysburgRecreation
//
//  Created by elmira on 2/23/14.
//
//

#import <Foundation/Foundation.h>
#import "XYZSoldier.h" //FIXME may not need this

@interface XYZBrigade : NSObject

// Each brigade has a set number of batteries (FIXME does this go here?)
extern const int NUMBER_OF_BATTERIES_IN_BRIGADE;

// The type of the brigade (FIXME best way to do this?)
@property NSString *typeOfBrigade;

@end
