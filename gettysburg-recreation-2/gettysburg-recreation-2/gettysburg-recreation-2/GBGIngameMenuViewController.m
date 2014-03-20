//
//  GBGIngameMenuViewController.m
//  gettysburg-recreation-2
//
//  Created by Ellen Hui on 3/19/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import "GBGIngameMenuViewController.h"

@interface GBGIngameMenuViewController ()

@end

@implementation GBGIngameMenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Main Menu";
        self.tabBarItem.image = [UIImage imageNamed:@"Computer.png"];

        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.hidesBackButton = YES;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
