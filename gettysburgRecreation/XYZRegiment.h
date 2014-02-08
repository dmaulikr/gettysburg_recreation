//
//  XYZRegiment.h
//  gettysburgRecreation
//
//  Created by elmira on 2/8/14.
//
//

#import <Foundation/Foundation.h>

@interface XYZRegiment : NSObject

@property CGFloat health; // should this be float?
@property NSString *allegiance;
@property CGFloat combatStrength;
@property CGPoint location;
@property CGFloat xVelocity;
@property CGFloat yVelocity;
@property CGFloat maxSpeed;
@property BOOL isAlive;

// A method that moves the reigment
- (void) moveTo:(CGPoint)desination;

// A method that attacks (takes another regiment as input)


//





@end
