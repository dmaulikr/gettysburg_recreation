//
//  XYZRegiment.h
//  gettysburgRecreation
//
//  Created by elmira on 2/8/14.
//
//

#import <Foundation/Foundation.h>

@interface XYZRegiment : NSObject

// A float that keeps track of a regiment's health throughout
@property float health;

// A label designating a regiment's allegiance
@property NSString *allegiance;

// The attacking power of a regiment
@property float combatStrength;

// An array that holds the x and y location of the regiment, where
// the integer portion is the specific tile and the decimal portion is
// the location within the tile
@property NSMutableArray *locationArray;

// Velocity in x and y direction of the regiment
@property float xVelocity;
@property float yVelocity;
@property float maxSpeed;
@property BOOL isAlive;

// A method that moves the reigment
- (void) moveTo:(CGPoint)destination;

// A method that attacks (takes another regiment as input)






@end
