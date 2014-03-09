//
//  XYZMainViewController.h
//  gettysburgRecreation
//
//  Created by elmira on 2/28/14.
//
//

#import <UIKit/UIKit.h>
#import "XYZPlayer.h"

@interface XYZMainViewController : UIViewController

@property NSString * passedRank;
@property NSString * passedLoyalty;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property XYZPlayer * player;

@end
