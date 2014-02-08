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
@property CGFloat health;

// A label designating a regiment's allegiance
@property NSString *allegiance;

// The attacking power of a regiment
@property CGFloat combatStrength;

// An array that holds the x and y location of the regiment, where
// the integer portion is the specific tile and the decimal portion is
// the location within the tile
@property NSMutableArray *locationArray = [[NSMutableArray alloc] initWithCapacity: 2];

// Velocity in x and y direction of the regiment
@property CGFloat xVelocity;
@property CGFloat yVelocity;
@property CGFloat maxSpeed;
@property BOOL isAlive;

// A method that moves the reigment
- (void) moveTo:(CGPoint)desination;

// A method that attacks (takes another regiment as input)


//





@end
