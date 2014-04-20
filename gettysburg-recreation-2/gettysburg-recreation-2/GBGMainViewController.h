//
//  GBGMainViewController.h
//  gettysburg-recreation-2
//
//  Created by Ellen Hui on 3/19/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GBGPlayer.h"


@interface GBGMainViewController : UIViewController

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIView *map;

@property (nonatomic) NSInteger rank;
@property (nonatomic) NSInteger side;

@property (nonatomic) NSArray *humanRegsLocations;
@property (nonatomic) NSArray *computerRegsLocations;

@property (nonatomic, strong) GBGPlayer *player;
@property (nonatomic, strong) GBGPlayer *computer;

//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;//FIXME: need this?
//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event; //FIXME
@end
