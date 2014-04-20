//
//  GBGMainViewController.m
//  gettysburg-recreation-2
//
//  Created by Ellen Hui on 3/19/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import "GBGMainViewController.h"

@interface GBGMainViewController ()

@end

@implementation GBGMainViewController

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
    
    // Set up the bounds for the map and the smaller scroller view.
    CGRect screenRect =[[UIScreen mainScreen] bounds];
    CGRect bigRect = screenRect;
    bigRect.size.height *= 3.0;
    bigRect.size.width *= 3.0;
    
    // Initialize views with appropriate frame sizes.
    _scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    _map = [[UIView alloc] initWithFrame:bigRect];
    
    // Give the map a picture.
    _map.layer.contents = (id)[UIImage imageNamed:@"gettysburg_map.png"].CGImage;
    
    // Add both views to the main view.
    [self.view addSubview:_scrollView];
    [_scrollView addSubview:_map];
    
    // Tell scrollView how big the map is, so it can scroll.
    _scrollView.contentSize = bigRect.size;

    // FIXME(DEBUG): are we passing values from the start menu?
    NSLog(@"side: %i", _side);
    NSLog(@"rank: %i", _rank);
    
    
    // Creating the regiments and handing them to the player and to the computer.
    
    // Initialize the computer and human regiment locations. For now, these locations
    // are hard-coded.
    CGPoint humanLocationsArray[2] = {{300, 300}, {600, 600}};
    CGPoint computerLocationsArray[2] = {{800, 800}, {1000, 1000}};
    
    NSMutableArray *humanRegsLocations = [[NSMutableArray alloc] initWithObjects:
                                          [NSValue valueWithCGPoint:CGPointMake(humanLocationsArray[0].x,humanLocationsArray[0].y)],
                                          [NSValue valueWithCGPoint:CGPointMake(humanLocationsArray[1].x, humanLocationsArray[1].y)], nil];
    NSMutableArray *computerRegsLocations = [[NSMutableArray alloc] initWithObjects:
                                             [NSValue valueWithCGPoint:CGPointMake(computerLocationsArray[0].x, computerLocationsArray[0].y)],
                                             [NSValue valueWithCGPoint:CGPointMake(computerLocationsArray[1].x, computerLocationsArray[1].y)], nil];
    
    _player = [[GBGPlayer alloc] initWithRegimentsAtLocations:humanRegsLocations andSide:_side];
    assert(_player);
    // FIXME: Eventually, there's going to have to be either two computer controllers (since currently
    // the GBGPlayer's side must match all of its regiments' sides), or the array is going to have to
    // pass in more information so that we can have GBGPlayers with regiments from both sides.
    if (_side) {
        _computer =[[GBGPlayer alloc] initWithRegimentsAtLocations:computerRegsLocations andSide:0];
    }
    else {
        _computer =[[GBGPlayer alloc] initWithRegimentsAtLocations:computerRegsLocations andSide:1];
    }
    
    // This is hard-coded because views overwrite each other in for-loops. For the first
    // iteration of this project, we want basic functionality for testing. We will optimize
    // if there is time.
    
    // Get the Union cavalry sprite from the file, and save one copy of it for each regiment
    UIImage *unionCavalrySprite0 = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Union_cavalry_Sprites" ofType:@"png"]];
     UIImage *unionCavalrySprite1 = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Union_cavalry_Sprites" ofType:@"png"]];
    
    // Make a UIImageView with each sprite
    UIImageView *unionCavalrySpriteView0 = [[UIImageView alloc] initWithImage:unionCavalrySprite0];
    UIImageView *unionCavalrySpriteView1 = [[UIImageView alloc] initWithImage:unionCavalrySprite1];
    
    
    // Obtain the first regiment's location and add a sprite there
    CGPoint humanRegPoint0 = [[humanRegsLocations objectAtIndex:0] CGPointValue];
    unionCavalrySpriteView0.center = CGPointMake(humanRegPoint0.x, humanRegPoint0.y);
    [self.view addSubview:unionCavalrySpriteView0];
    
    // Obtain the second regiment's location and add a sprite there
    CGPoint humanRegPoint1 = [[humanRegsLocations objectAtIndex:1] CGPointValue];
    unionCavalrySpriteView1.center = CGPointMake(humanRegPoint1.x, humanRegPoint1.y);
    [self.view addSubview:unionCavalrySpriteView1];
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
