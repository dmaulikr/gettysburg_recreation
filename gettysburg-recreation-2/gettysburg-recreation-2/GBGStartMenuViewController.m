//
//  GBGStartMenuViewController.m
//  gettysburg-recreation-2
//
//  Created by Ellen Hui on 3/18/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import "GBGStartMenuViewController.h"

@interface GBGStartMenuViewController ()

@end

@implementation GBGStartMenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

        _ranks = @[@"Colonel", @"Major General", @"Brigadier General", @"General"];
        _sides = @[@"Union", @"Confederacy"];
        
        
        _optionSelector = [[UIPickerView alloc] initWithFrame:CGRectMake(150, 300, 500, 500)];
        _optionSelector.delegate = self;
        _optionSelector.showsSelectionIndicator = YES;
        [self.view addSubview:_optionSelector];
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 * DataSource Methods;
 */
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
