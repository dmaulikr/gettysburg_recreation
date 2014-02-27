//
//  XYZPickerViewController.m
//  gettysburgRecreation
//
//  Created by Ellen Hui on 2/26/14.
//
//

#import "XYZPickerViewController.h"

@interface XYZPickerViewController ()
@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameText;

- (IBAction)textNameFieldReturn:(UITextField *)sender;

@end

@implementation XYZPickerViewController


/*
 * This is where the DataSource methods will be.
 */


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _ranks.count;
}

- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _ranks[row];
}

/*
 * This is where the Delegate methods will be.
 */

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSString * selectedRank = _ranks[row];
    NSString * name = _nameText.text;
    
    NSString * resultString = [NSString stringWithFormat:
                               @"Play as %@ %@", selectedRank, name];
    
    _resultLabel.text = resultString;
    NSLog(@"Selected a row!");
}

/*
 * Standard ViewController methods down here.
 */

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _ranks = @[@"General", @"Brigadier General", @"Major General"];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textNameFieldReturn:(UITextField *)sender {
}
@end
