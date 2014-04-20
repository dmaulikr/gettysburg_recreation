//
//  GBGViewController.h
//  gettysburg-recreation-2
//
//  Created by elmira on 4/20/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GBGPlayer.h"

@interface GBGViewController : UIView

@property (nonatomic) NSInteger rank;
@property (nonatomic) NSInteger side;

@property (nonatomic, strong) GBGPlayer *player;
@property (nonatomic, strong) GBGPlayer *computer;

@end
