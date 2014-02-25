//
//  XYZCavalryRegiment.h
//  gettysburgRecreation
//
//  Created by Ellen Hui on 2/20/14.
//
//

#import "XYZRegiment.h"
#import "Constants.m" //FIXME need this?

@interface XYZCavalryRegiment : XYZRegiment

// The starting size of the cavalry, in number of men 
extern const int CAVALRY_START_SIZE;

// The movement speed of the cavalry
@property float cavalrySpeed;

-(id)init;

@end
