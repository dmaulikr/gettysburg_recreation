//
//  GBGPlayer.h
//  gettysburg-recreation-2
//
//  Created by Ellen Hui on 3/31/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GBGRegiment.h"

@interface GBGPlayer : NSObject

// This is an NSMutableArray of the regiments that this player controls.
@property (nonatomic, strong) NSMutableArray *controlledRegiments;

/*
 * Initializer for the player class. Takes in an NSArray of NSValues,
 * where the NSValues are the locations of the regiments owned by this 
 * player.  
 * 
 * NOTE: This can pretty easily be modified to take locations in another 
 * format if necessary.
 */
-(id)initWithRegimentsAtLocations:(NSArray *)locations andSide:(enum Side)side;



@end