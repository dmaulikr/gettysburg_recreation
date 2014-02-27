//
//  XYZPickerViewController.h
//  gettysburgRecreation
//
//  Created by Ellen Hui on 2/26/14.
//
//

#import <UIKit/UIKit.h>

@interface XYZPickerViewController : UIViewController
            <UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) NSArray * ranks;

@end
