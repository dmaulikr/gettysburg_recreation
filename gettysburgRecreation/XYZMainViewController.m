//
//  XYZMainViewController.m
//  gettysburgRecreation
//
//  Created by elmira on 2/28/14.
//
//

#import "XYZMainViewController.h"
#import "XYZPlayer.h"

@interface XYZMainViewController ()

@end

@implementation XYZMainViewController

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
    
    self.view.layer.contents = (id)[UIImage imageNamed:@"placeholderMap.png"].CGImage;
    
    
    //FIXME This isn't calling the XYZPlayer constructor.  Why?
    self.player = [self.player initWithRank:_passedRank andSide:_passedLoyalty];
    
    
    //NSLog(_passedLoyalty);
    //NSLog(_passedRank);
    //self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"placeholderMap.png"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
