//
//  XYZStartMenuViewController.m
//  gettysburgRecreation
//
//  Created by Ellen Hui on 2/26/14.
//
//

#import "XYZStartMenuViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "XYZMainViewController.h"

@interface XYZStartMenuViewController ()

// - (IBAction)textNameFieldReturn:(UITextField *)sender;

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
    
    if (component == 0)
    {
        _selectedRank = _ranks[row];
    }
    else
    {
        _selectedSide = _sides[row];
    }
    
    NSString * resultString = [self pickerView:pickerView pickedRank:_selectedRank andSide:_selectedSide];
    
    _resultLabel.text = resultString;
    
    [_startButton setTitle:resultString forState:UIControlStateNormal];
}


/*
 * Helper function for parsing the picker's selections nicely.
 */
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
        [_startButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        _startButton.enabled = YES;

    }
    return resultString;
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
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"placeholderBG.jpg"]];
    
    _ranks = @[@"Colonel", @"Major General", @"Brigadier General", @"General"];
    _sides = @[@"Union", @"Confederacy"];
    
    [_startButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    _startButton.enabled = NO;


}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"startGame"])
    {
        
        XYZMainViewController * destViewController = segue.destinationViewController;
        
        destViewController.passedRank = _selectedRank;
        destViewController.passedLoyalty = _selectedSide;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textNameFieldReturn:(UITextField *)sender {
}
@end
