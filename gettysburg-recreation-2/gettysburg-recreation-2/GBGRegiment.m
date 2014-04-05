//
//  GBGRegiment.m
//  gettysburg-recreation-2
//
//  Created by Ellen Hui on 3/31/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import "GBGRegiment.h"

@implementation GBGRegiment

-(instancetype)initWithRegimentType:(RegimentType)type andOrigin:(CGPoint)origin {
    self = [super init];
    if (self) {
        // FIXME: Give these actual values instead of placeholder = 100.
        switch (type) {
            case Infantry:
                self.regimentType = Infantry;
                self.health         = 100;
                self.moveSpeed      = 100;
                self.combatStrength = 100;
                NSLog(@"is an infantry!");
                break;
                
            case Cavalry:
                self.regimentType = Cavalry;
                self.health         = 100;
                self.moveSpeed      = 100;
                self.combatStrength = 100;
                NSLog(@"is a cavalry!");

                break;
                
            case Artillery:
                self.regimentType = Artillery;
                self.health         = 100;
                self.moveSpeed      = 100;
                self.combatStrength = 100;
                NSLog(@"is an artillery!");


                break;
        }
    }
    // FIXME
    return self;
}


// FIXME: Move method.  Should really be implemented in subclasses, but assume only one type of regiment for now.
-(NSArray *)getPathTo:(CGPoint)destination withNumSteps:(CGFloat) steps {
    //CGPoint center = CGPointMake()
    
    /*
     * The starting position is indicated by the coordinates of the upper left corner and the size of the frame.
     * Therefore, the center is the origin plus half the height/width.
     */
                                 
    //CGFloat srcX = _position.origin.x + _position.size.width / 2;   // X-coordinate of current position.
    //CGFloat srcY = _position.origin.y + _position.size.height / 2;  // Y-coordinate of current position.
    
    CGFloat destX = destination.x - _position.size.width / 2;   // X-coordinate of dest position.
    CGFloat destY = destination.y - _position.size.height / 2;  // Y-coordinate of dest position.

    CGFloat deltaX = destX - _position.origin.x;
    CGFloat deltaY = destY = _position.origin.y;

    CGFloat newX = _position.origin.x;
    CGFloat newY = _position.origin.y;
    NSValue *newPoint;
    
    NSMutableArray *pointsInPath = [[NSMutableArray alloc] init];
    
    for (CGFloat i = 0; i <= 1; i += 1 / steps) {
        newX += deltaX * i;
        newY += deltaY * i;
        newPoint = [NSValue valueWithCGPoint:CGPointMake(newX, newY)];
        
        [pointsInPath addObject:newPoint];
    }
    return pointsInPath;
}

-(void)attack:(GBGRegiment *)target {
    // FIXME
}



@end
