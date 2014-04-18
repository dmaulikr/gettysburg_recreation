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
    //static CGPoint locationss[2] = {{180, 180}, {300, 400}};
    NSMutableArray *humanRegsLocations = [[NSMutableArray alloc] initWithObjects:[NSValue valueWithCGPoint:CGPointMake(100,100)], nil];
    NSMutableArray *computerRegsLocations = [[NSMutableArray alloc] initWithObjects:[NSValue valueWithCGPoint:CGPointMake(100,300)], nil];
    
    _player = [[GBGPlayer alloc] initWithRegimentsAtLocations:humanRegsLocations andSide:_side];
    NSLog(@"%@", @"Testing1");
    NSLog(@"%@", humanRegsLocations[0]);
    // FIXME: Eventually, there's going to have to be either two computer controllers (since currently
    // the GBGPlayer's side must match all of its regiments' sides), or the array is going to have to
    // pass in more information so that we can have GBGPlayers with regiments from both sides.
    if (_side) {
        _computer =[[GBGPlayer alloc] initWithRegimentsAtLocations:computerRegsLocations andSide:0];
    }
    else {
        _computer =[[GBGPlayer alloc] initWithRegimentsAtLocations:computerRegsLocations andSide:1];
    }
    
    NSLog(@"%@", @"says CGPoint is at {0,0}; intitializer not working");
    
    // Get the Union cavalry sprite from the file
    UIImage *unionCavalrySprite = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Union_cavalry_Sprites" ofType:@"png"]];
    
    // Create a UIImageView corresponding to the sprite, center it,
    // and add the new view as a subview of the map
    UIImageView *unionCavalrySpriteView = [[UIImageView alloc] initWithImage:unionCavalrySprite];
    
    for (int i = 0; i < humanRegsLocations.count; i++) {
        
        // Extract CGPoint from the NSValue wrapper
        NSValue *humanRegValue = [_humanRegsLocations objectAtIndex:0];
        CGPoint humanRegPoint = [humanRegValue CGPointValue]; // FIXME: the issue is here
        
        NSLog(@"%@", @"Testing");
        NSLog(@"%@", humanRegPoint);
        //NSLog(@"%@", NSStringFromCGPoint(humanRegPoint));
        // Get the x and y coordinates from the location
        CGFloat xLocation = humanRegPoint.x;
        CGFloat yLocation = humanRegPoint.y;
        
        
        unionCavalrySpriteView.center = CGPointMake(15, 15);//FIXME: may not want centered
        [self.view addSubview:unionCavalrySpriteView];
        
        
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //UITouch *myTouch = [[touches allObjects] objectAtIndex: 0];
    UITouch *touch = [touches anyObject];
    CGPoint currentPos = [touch locationInView: self.view];
    NSLog(@"Point in myView: (%f,%f)", currentPos.x, currentPos.y);
}

/*- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    UIView *touchedView = [super hitTest:point withEvent:event];
    NSSet* touches = [event allTouches];
    // handle touches if you need
    return touchedView;
 
}*/
/* Maybe use this for tapping?
 //Getting mouse coordinates
 NSMutableArray *vertices = [[NSMutableArray alloc] init];
 CGPoint location = [self convertPoint:event.locationInWindow fromView:self];
 NSValue *locationValue = [NSValue valueWithPoint:location];
 [vertices addObject:locationValue];
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
