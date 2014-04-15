//
//  GBGPlayer.m
//  gettysburg-recreation-2
//
//  Created by Ellen Hui on 3/31/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import "GBGPlayer.h"
//#import "GBGRegiment.h"

@interface GBGPlayer ()
@end


@implementation GBGPlayer

-(id)initWithRegimentsAtLocations:(NSArray *)locations andSide:(enum Side)side{
    self = [super init];

    self.controlledRegiments = [[NSMutableArray alloc] init];
    
    
    // Some temporary variables, used in the for loop.
    NSValue *loc;
    CGPoint pointLoc;
    
    for (loc in locations) {
        // Extract CGPoint from NSValue wrapper
        pointLoc = [loc CGPointValue];
        
        // Create a new regiment at this location and add it to the list of controlled regiments.
        // Currently, all regiments created are infantry type.
        [self.controlledRegiments addObject:[[GBGRegiment alloc] initWithRegimentType:0 andOrigin:pointLoc andSide:side]];
        
    }
    return self;
}


@end
