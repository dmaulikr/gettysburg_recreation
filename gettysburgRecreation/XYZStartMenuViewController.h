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

@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
//@property (weak, nonatomic) IBOutlet UITextField *nameText;

// FIXME: This button isn't connected to anything yet.
@property (weak, nonatomic) IBOutlet UIButton *startButton;


@property (strong, nonatomic) NSArray * ranks;
@property (strong, nonatomic) NSArray * sides;


@property NSString * selectedRank;
@property NSString * selectedSide;

@property NSString * loyalty;
@property NSString * name;

@end
