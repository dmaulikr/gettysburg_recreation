//
//  XYZPickerViewController.m
//  gettysburgRecreation
//
//  Created by Ellen Hui on 2/26/14.
//
//

#import "XYZStartMenuViewController.h"

@interface XYZStartMenuViewController ()
@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameText;

- (IBAction)textNameFieldReturn:(UITextField *)sender;

@end

@implementation XYZStartMenuViewController


/*
 * This is where the DataSource methods will be.
 */


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;   // Component 0 will be the ranks
                // Component 1 will be loyalty (Union/Confederacy)
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == 0)
    {
        return _ranks.count;
    }
    else
    {
        return _sides.count;
    }
}

- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component == 0)
    {
        return _ranks[row];
    }
    else
    {
        return _sides[row];
    }
}

/*
 * This is where the Delegate methods will be.
 */

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
    //_selectedRank = @"";
    //_selectedSide = @"";

    if (component == 0)
    {
        _selectedRank = _ranks[row];
    }
    else
    {
        _selectedSide = _sides[row];
    }
    
    NSString * resultString = [self pickerView:pickerView pickedRank:_selectedRank andSide:_selectedSide];
    
    //NSString * resultString = [NSString stringWithFormat:
    //                           @"Play as a %@ of %@", _selectedRank, _selectedSide];
    
    _resultLabel.text = resultString;
}

-(NSString*)pickerView:(UIPickerView*)pickerView pickedRank:(NSString*)rank andSide:(NSString*)side
{
    NSString * resultString;
    if (rank == NULL)
    {
        resultString = [NSString stringWithFormat: @"Play for the %@", side];
    }
    else if (side == NULL)
    {
        resultString = [NSString stringWithFormat:@"Play as a %@", rank];
    }
    else
    {
        resultString = [NSString stringWithFormat:
                                   @"Play as a %@ of the %@", _selectedRank, _selectedSide];
    }
    return resultString;
}

/* FIXME
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    _name = _nameText.text;
    
}
 */


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
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"placeholderBG.jpg"]];
    
    _ranks = @[@"General", @"Brigadier General", @"Major General"];
    _sides = @[@"Union", @"Confederacy"];
    
    //[_picker selectedRowInComponent:2];
    
    //_name = _nameText.text;
    //selectedRank = @"Major General";
    //_name = @"";
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
