//
//  XYZPickerViewController.h
//  gettysburgRecreation
//
//  Created by Ellen Hui on 2/26/14.
//
//

#import <UIKit/UIKit.h>

@interface XYZStartMenuViewController : UIViewController
            <UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate>

@property (strong, nonatomic) NSArray * ranks;
@property (strong, nonatomic) NSArray * sides;


@property NSString * selectedRank;
@property NSString * selectedSide;

@property NSString * loyalty;
@property NSString * name;

@end
