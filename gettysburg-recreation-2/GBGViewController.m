//
//  GBGViewController.m
//  gettysburg-recreation-2
//
//  Created by elmira on 4/20/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import "GBGViewController.h"

@implementation GBGViewController

float oldX, oldY;
bool dragging;

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //self.userInteractionEnabled = YES; FIXME: need this?
    
    UITouch *touch = [touches anyObject];
    CGPoint touchLocation = [touch locationInView: touch.view];
    if ([[touch.view class] isSubclassOfClass:[UIImageView class]]) {
         NSLog(@"%@", @"TOUCHED!");
        dragging = YES;
        oldX = touchLocation.x;
        oldY = touchLocation.y;
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    dragging = NO;
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint touchLocation = [touch locationInView:touch.view];
    if ([[touch.view class] isSubclassOfClass:[UIImageView class]]) {
        UIView *theView = (UIView *)touch.view;
        if (dragging) {
            CGRect frame = theView.frame;
            frame.origin.x = theView.frame.origin.x + touchLocation.x - oldX;
            frame.origin.y = theView.frame.origin.y + touchLocation.y - oldY;
            theView.frame = frame;
        }
    }
}

/*
-(id)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    id hitView = [super hitTest:point withEvent:event];
    if (hitView == self) return nil;
    else return hitView;
}
*/
@end
