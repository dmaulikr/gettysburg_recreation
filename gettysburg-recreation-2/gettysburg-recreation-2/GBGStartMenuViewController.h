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
@property (nonatomic, strong) NSArray * ranks;
@property (nonatomic, strong) NSArray * sides;

@end
