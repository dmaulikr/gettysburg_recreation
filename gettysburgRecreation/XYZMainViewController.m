//
//  XYZMainViewController.m
//  gettysburgRecreation
//
//  Created by elmira on 2/28/14.
//
//

#import "XYZMainViewController.h"
#import "XYZPlayer.h"
#import "SWRevealViewController.h"

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
    self.navigationItem.hidesBackButton = YES;
    self.view.layer.contents = (id)[UIImage imageNamed:@"placeholderMap.png"].CGImage;
    
    // Change button color
    _sidebarButton.tintColor = [UIColor colorWithWhite:0.96f alpha:0.2f];
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];

    
    //FIXME This isn't calling the XYZPlayer constructor.  Why?
    // Also not compiling as is.  WAT.
    // self.player = [XYZPlayer init];
    //self.player = [XYZPlayer alloc];
    //self.player = [[XYZPlayer alloc] initWithRank:_passedRank andSide:_passedLoyalty];
    
    //assert(self.player != NULL);
    
    
    NSLog(@"%@", _passedLoyalty);
    NSLog(@"%@",_passedRank);
    //self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"placeholderMap.png"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
