//
//  GBGMainViewController.m
//  gettysburg-recreation-2
//
//  Created by Ellen Hui on 3/19/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import "GBGMainViewController.h"
#import "GBGImageView.h"

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
    //_scrollView.contentSize = bigRect.size;

    // To be used in the future once the values are passed from the start menu
    NSLog(@"side: %i", _side);
    NSLog(@"rank: %i", _rank);
    
    
    // Creating the regiments and handing them to the player and to the computer.
    
    // Initialize the computer and human regiment locations. For now, these locations
    // are hard-coded.
    CGPoint humanLocationsArray[2] = {{225, 300}, {225, 500}};
    CGPoint computerLocationsArray[2] = {{600, 275}, {600, 475}};
    
    // Store the computer and human regiment locations in an array for easy access.
    // For now, these locations are hard-coded.
    NSMutableArray *humanRegsLocations = [[NSMutableArray alloc] initWithObjects:
                                          [NSValue valueWithCGPoint:CGPointMake(225,300)],
                                          [NSValue valueWithCGPoint:CGPointMake(225, 500)], nil];
    NSMutableArray *computerRegsLocations = [[NSMutableArray alloc] initWithObjects:
                                             [NSValue valueWithCGPoint:CGPointMake(600, 275)],
                                             [NSValue valueWithCGPoint:CGPointMake(600, 475)], nil];
    
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
    
    // This is hard-coded because views overwrite each other in for-loops. For the first
    // iteration of this project, we want basic functionality for testing. We will optimize
    // if there is time.
    
    // Put the Union Infantry soldiers on the map
    
    // Get the sprite from the file
    UIImage *unionInfantrySprite = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Union_Soldier_Marching_Sprites" ofType:@"png"]];
    
    // Create a GBGImageView for each sprite
    GBGImageView *unionInfantrySpriteView0 = [[GBGImageView alloc] initWithImage:unionInfantrySprite];
    GBGImageView *unionInfantrySpriteView1 = [[GBGImageView alloc] initWithImage:unionInfantrySprite];
    
    // Rotate the sprite views 90 degrees
    unionInfantrySpriteView0.transform = CGAffineTransformMakeRotation(3.14/2);
    unionInfantrySpriteView1.transform = CGAffineTransformMakeRotation(3.14/2);
    
    // Obtain the first Union regiment's location and add a sprite there
    CGPoint humanRegPoint0 = [[humanRegsLocations objectAtIndex:0] CGPointValue];
    unionInfantrySpriteView0.center = CGPointMake(humanRegPoint0.x, humanRegPoint0.y);
    [self.view addSubview:unionInfantrySpriteView0];
    
    // Make the view touchable and moveable
    unionInfantrySpriteView0.userInteractionEnabled = YES;
    
    // Obtain the second Union regiment's location and add a sprite there
    CGPoint humanRegPoint1 = [[humanRegsLocations objectAtIndex:1] CGPointValue];
    unionInfantrySpriteView1.center = CGPointMake(humanRegPoint1.x, humanRegPoint1.y);
    [self.view addSubview:unionInfantrySpriteView1];
    
    // Make the view touchable and moveable
    unionInfantrySpriteView1.userInteractionEnabled = YES;
    
    // Put the Confederate Infantry soldiers on the map
    
    // Get the sprite from the file
    UIImage *confederateInfantrySprite = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Confederate_Soldier_Marching_Sprites" ofType:@"png"]];
    
    // Create a GBGImageView for each sprite
    GBGImageView *confederateInfantrySpriteView0 = [[GBGImageView alloc] initWithImage:confederateInfantrySprite];
    GBGImageView *confederateInfantrySpriteView1 = [[GBGImageView alloc] initWithImage:confederateInfantrySprite];

    // Rotate each the sprite views 90 degrees
    confederateInfantrySpriteView0.transform = CGAffineTransformMakeRotation(-3.14/2);
    confederateInfantrySpriteView1.transform = CGAffineTransformMakeRotation(-3.14/2);
    
    // Obtain the first Confederate regiment's location and add a sprite there
    CGPoint computerRegPoint0 = [[computerRegsLocations objectAtIndex:0] CGPointValue];
    confederateInfantrySpriteView0.center = CGPointMake(computerRegPoint0.x, computerRegPoint0.y);
    [self.view addSubview:confederateInfantrySpriteView0];
    
    // Make the view touchable and moveable
    confederateInfantrySpriteView0.userInteractionEnabled = YES;
    
    // Obtain the second Confederate regiment's location and add a sprite there
    CGPoint computerRegPoint1 = [[computerRegsLocations objectAtIndex:1] CGPointValue];
    confederateInfantrySpriteView1.center = CGPointMake(computerRegPoint1.x, computerRegPoint1.y);
    [self.view addSubview:confederateInfantrySpriteView1];
    
    // Make the view touchable and moveable
    confederateInfantrySpriteView1.userInteractionEnabled = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
