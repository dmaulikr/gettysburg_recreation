//
//  GBGRegiment.m
//  gettysburg-recreation-2
//
//  Created by Ellen Hui on 3/31/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import "GBGRegiment.h"

@implementation GBGRegiment

-(id)initWithRegimentType:(RegimentType)type andOrigin:(CGPoint)origin andSide:(Side)side {
    self = [super init];
    if (self) {
        // FIXME: Give these actual values instead of placeholder = 100.
        switch (type) {
            case Infantry:
                self.regimentType = Infantry;
                self.health         = 100;
                self.moveSpeed      = 100;
                self.combatStrength = 100;
                break;
                
            case Cavalry:
                self.regimentType = Cavalry;
                self.health         = 100;
                self.moveSpeed      = 100;
                self.combatStrength = 100;
                break;
                
            case Artillery:
                self.regimentType = Artillery;
                self.health         = 100;
                self.moveSpeed      = 100;
                self.combatStrength = 100;
                break;
        }
    }
    
    // FIXME: currently, all regiments are of size 10 by 10.  They probably shouldn't be so arbitrary, or so square.
    self.position = CGRectMake(origin.x, origin.y, 10, 10);
    //CGRect aRect = { aPoint, aSize };
    
    self.side = side;
    
    NSLog(@"Made a %d regiment at position (%f, %f)", _side, _position.origin.x, _position.origin.y);
    return self;
}


-(NSArray *)getPathTo:(CGPoint)destination withNumSteps:(CGFloat) steps {
    
    /*
     * A subview's origin is its upper left corner, so this is some arithmetic to
     * find the upper left corner of the destination view (since presumably the touch 
     * won't occur at the upper left of the location the user wants).
     */
    CGFloat destX = destination.x - _position.size.width / 2;   // X-coordinate of dest position.
    CGFloat destY = destination.y - _position.size.height / 2;  // Y-coordinate of dest position.

    // Finding the x and y differences between points
    CGFloat deltaX = destX - _position.origin.x;
    CGFloat deltaY = destY - _position.origin.y;

    // Points for incrementing
    CGFloat newX = _position.origin.x;
    CGFloat newY = _position.origin.y;
    
    NSMutableArray *pointsInPath = [[NSMutableArray alloc] init];
    
    // Define each step of the movement
    for (CGFloat i = 0; i <= 1; i += 1 / steps) {
        newX += deltaX * i;
        newY += deltaY * i;

        // NSArrays can't hangle structs, to wrap the CGPoint in an NSValue
        [pointsInPath addObject:[NSValue valueWithCGPoint:CGPointMake(newX, newY)]];
    }
    return pointsInPath;
}

-(void)attack:(GBGRegiment *)target {
    // TODO: Implement this if there is time. Not high priority.
}



@end
