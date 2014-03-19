//
//  GBGStartMenuViewController.h
//  gettysburg-recreation-2
//
//  Created by Ellen Hui on 3/18/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GBGStartMenuViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>

@property (nonatomic, strong) UIPickerView *optionSelector;
@property (nonatomic, strong) UIButton *startButton;

@property (nonatomic, strong) NSString *startButtonLabel;

@property (nonatomic, strong) NSArray *ranks;
@property (nonatomic, strong) NSArray *sides;

@property (nonatomic, strong) NSString *selectedRank;
@property (nonatomic, strong) NSString *selectedSide;


@end
