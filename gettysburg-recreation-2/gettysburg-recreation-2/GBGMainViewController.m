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
    /*
    self.navigationItem.hidesBackButton = YES;
    self.view.layer.contents = (id)[UIImage imageNamed:@"placeholderMap.png"].CGImage;
    */
    
    
    CGRect screenRect =[[UIScreen mainScreen] bounds];
    // screenRect = self.window.bounds;
    CGRect bigRect = screenRect;
    bigRect.size.height *= 3.0;
    bigRect.size.width *= 3.0;
    
    UIScrollView *scroller = [[UIScrollView alloc] initWithFrame:screenRect];
    UIView *map = [[UIView alloc] initWithFrame:bigRect];
    
    map.layer.contents = (id)[UIImage imageNamed:@"placeholderMap.png"].CGImage;
    [self.view addSubview:scroller];
    [scroller addSubview:map];
    
    assert(self.view.subviews.count > 0);
    scroller.contentSize = bigRect.size;


    
    
    //self.view.layer.contents = (id)[UIImage imageNamed:@"placeholderMap.png"].CGImage;
    
    /*
     for (id obj in self.view.subviews)
     NSLog(@"obj: %@", obj);
     
    
    //_mainView = [[UIView alloc] initWithFrame:bigRect];
    //_mainView.layer.contents = (id)[UIImage imageNamed:@"placeholderMap.png"].CGImage;
    //_mainView.layer.contents = (id)[UIImage imageNamed:@"placeholderMap.png"].CGImage;
    
    UIImageView *mainView = [[UIImageView alloc]initWithFrame:bigRect];
    UIImage *map = [UIImage imageNamed:@"placeholderMap.png"];
    
    //GBGMainView *testy = [[GBGMainView alloc] initWithFrame:bigRect];
    
    mainView.image = map;


    _scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    
    //assert(_mainView);
    //assert(_scrollView);
    
    [self.view.window addSubview:_scrollView];
    [_scrollView addSubview:mainView];
    
    _scrollView.contentSize = bigRect.size;
    
    self.view.window.backgroundColor = [UIColor blackColor];


    
    
    //[_mainView setImage:[UIImage imageNamed:@"placeholderMap.png"]];
    */

    // Do any additional setup after loading the view.
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
