//
//  GBGStartMenuViewController.m
//  gettysburg-recreation-2
//
//  Created by Ellen Hui on 3/18/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import "GBGStartMenuViewController.h"
#import "GBGMainViewController.h"


@interface GBGStartMenuViewController ()

@end

@implementation GBGStartMenuViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Set up the data for rank/side.
    _ranks = @[@"Colonel", @"Brigadier General", @"Major General", @"General"];
    _sides = @[@"Union", @"Confederacy"];
    
    // Create rank/side selector.
    _optionSelector = [[UIPickerView alloc] initWithFrame:CGRectMake(150, 300, 500, 500)];
    _optionSelector.delegate = self;
    _optionSelector.showsSelectionIndicator = YES;
    
    // Create start button.
    _startButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _startButton.frame = CGRectMake(100, 100, 600, 300);
    _startButtonLabel = @"Choose a rank and side!";
    
    // Set up start button.
    [_startButton setTitle:_startButtonLabel forState:UIControlStateNormal];
    [_startButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_startButton.titleLabel setFont:[UIFont systemFontOfSize:25]];
    
    // Add start button and rank/side selector as subviews.
    [self.view addSubview:_startButton];
    [self.view addSubview:_optionSelector];
    
    [_startButton addTarget:self action:@selector(didPressButton:) forControlEvents:UIControlEventTouchUpInside];


    // FIXME: With this line, the button only changes label once both rank and side are selected.
    _startButton.enabled = NO;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIPickerViewDataSource

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;   // Component 0 will be the ranks
                // Component 1 will be the sides (Union/Confederacy)
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == 0) {
        return _ranks.count;
    }
    else {
        return _sides.count;
    }
}

- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component == 0) {
        return _ranks[row];
    }
    else {
        return _sides[row];
    }
}


#pragma mark - UIPickerViewDelegate

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (component == 0) {
        _selectedRank = _ranks[row];
        _selectedRankNum = row;
    }
    else {
        _selectedSide = _sides[row];
        _selectedSideNum = row;
    }
    
    NSString * resultString = [self pickerView:pickerView pickedRank:_selectedRank andSide:_selectedSide];
    
    [_startButton setTitle:resultString forState:UIControlStateNormal];
}

/*
 * Helper function for parsing the picker's selections nicely.
 */
-(NSString*)pickerView:(UIPickerView*)pickerView pickedRank:(NSString*)rank andSide:(NSString*)side
{
    NSString * resultString;
    if (rank == NULL) {
        resultString = [NSString stringWithFormat: @"Play for the %@", side];

    }
    
    else if (side == NULL) {
        resultString = [NSString stringWithFormat:@"Play as a %@", rank];
    }
    
    else {
        resultString = [NSString stringWithFormat:
                        @"Play as a %@ of the %@!", _selectedRank, _selectedSide];
        
        if ([_selectedSide isEqualToString:(@"Union")]) {
            [_startButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        }
        
        else if ([_selectedSide isEqualToString:(@"Confederacy")]) {
            [_startButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        }
        
        _startButton.enabled = YES;
        
    }
    return resultString;
}

#pragma mark - ButtonClick

- (void)didPressButton:(UIButton *)sender
{
    if (sender == _startButton) {
        GBGMainViewController *mainViewController = [[GBGMainViewController alloc] init];
        mainViewController.side = _selectedSideNum;
        mainViewController.rank = _selectedRankNum;
        
        //GBGIngameMenuTableViewController *gameMenuController = [[GBGIngameMenuTableViewController alloc] init];
    
        //UITabBarController *tabBarController = [[UITabBarController alloc] init];
        //tabBarController.viewControllers = @[mainViewController, gameMenuController];
        
        // Since we never want to go back to start menu, just replace it on the navigation stack.
        [self.navigationController setViewControllers:[NSArray arrayWithObject:mainViewController] animated:YES];


        //[self.navigationController pushViewController:mainViewController animated:YES];
    }
}






/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
