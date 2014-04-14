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
    
    // FIXME: Currently, regardless of what rank is passed in, will create a human
    // player with one regiment and a computer player with one regiment.
    
    // The initializers take an array of regiment locations.  Currently, these location
    // arrays are a total hack.  Real locations TBD.
    NSArray *humanRegsLocations = [[NSArray alloc] initWithObjects:[NSValue valueWithCGPoint:CGPointMake(100,100)], nil];
    NSArray *computerRegsLocations = [[NSArray alloc] initWithObjects:[NSValue valueWithCGPoint:CGPointMake(100,300)],nil];
    
    _player = [[GBGPlayer alloc] initWithRegimentsAtLocations:humanRegsLocations andSide:_side];

    // FIXME: Eventually, there's going to have to be either two computer controllers (since currently
    // the GBGPlayer's side must match all of its regiments' sides), or the array is going to have to
    // pass in more information so that we can have GBGPlayers with regiments from both sides.
    if (_side) {
        _computer =[[GBGPlayer alloc] initWithRegimentsAtLocations:computerRegsLocations andSide:0];
    }
    else {
        _computer =[[GBGPlayer alloc] initWithRegimentsAtLocations:computerRegsLocations andSide:1];
    }
    
    // Get the Union cavalry sprite from the file
    UIImage *unionCavalrySprite = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Union_cavalry_Sprites" ofType:@"png"]];
    
    // Create a UIImageView corresponding to the sprite, center it,
    // and add the new view as a subview of the map
    UIImageView *unionCavalrySpriteView = [[UIImageView alloc] initWithImage:unionCavalrySprite];
    
    for (int i=0; i< humanRegsLocations.count;i++) {
        
        // Extract CGPoint from the NSValue wrapper
        NSValue *humanRegValue = _humanRegsLocations[i];
        CGPoint humanRegPoint = humanRegValue.CGPointValue;
        
        // Get the x and y coordinates from the location
        CGFloat xLocation = humanRegPoint.x;
        CGFloat yLocation = humanRegPoint.y;
        NSLog(@"X: %f", xLocation); // The location says it's zero. FIXME: instatiation method.
        unionCavalrySpriteView.center = CGPointMake(xLocation, yLocation);
        [self.view addSubview:unionCavalrySpriteView];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Make the regiments appear on the map (FIXME: this will need to be optimized
// for large numbers of regiments)
/**- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    // Get the Union cavalry sprite from the file
    UIImage *unionCavalrySprite = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Union_cavalry_Sprites" ofType:@"png"]];
    
    // Create a UIImageView corresponding to the sprite, center it,
    // and add the new view as a subview of the map (FIXME MANY PROBLEMS)
    UIImageView *unionCavalrySpriteView = [[UIImageView alloc] initWithImage:unionCavalrySprite];
    
    // Temporary values for the for loop
    NSValue *humanRegValue; // The NSValue coming from the humanRegsLocations array
    CGPoint humanRegPoint; // The CGPoint to which each NSValue will be converted
    
    for (humanRegValue in _humanRegsLocations) {
        NSLog(@"THE LOG SCORE : %f", 2.0f);
        // Extract CGPoint from the NSValue wrapper
        humanRegPoint = [humanRegValue CGPointValue];
        CGFloat xLocation = humanRegPoint.x;
        CGFloat yLocation = humanRegPoint.y;
        //NSLog(@"THE LOG SCORE : %f", xLocation);
        unionCavalrySpriteView.center = CGPointMake(xLocation, yLocation);
        [self.view addSubview:unionCavalrySpriteView];
        
        [super viewDidAppear:YES];
    }
}
    
*/
    


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
