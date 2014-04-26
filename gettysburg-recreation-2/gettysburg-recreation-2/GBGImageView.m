//
//  GBGImageView.m
//  gettysburg-recreation-2
//
//  Created by elmira on 4/25/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import "GBGImageView.h"

@implementation GBGImageView


// Instance variables used in the touchesBegan: withEvent: method
float oldX, oldY;
bool dragging;

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //self.userInteractionEnabled = TRUE;
    
    UITouch *touch = [touches anyObject];
    CGPoint touchLocation = [touch locationInView: touch.view];
    NSLog(@"%@", @"TOUCHED!");
    if ([[touch.view class] isSubclassOfClass:[UIImageView class]]) {
        
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

- (id) initWithImage:(UIImage *)image {
   self = [super initWithImage:image];
    return self;
}
/*- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
 {
 CGFloat radius = 100.0;
 CGRect frame = CGRectMake(0, 0,
 self.frame.size.width + radius,
 self.frame.size.height + radius);
 
 if (CGRectContainsPoint(frame, point)) {
 return YES;
 }
 
 return [super pointInside:point withEvent:event];
 }
 
 - (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
 {
 CGFloat radius = 100.0;
 CGRect frame = CGRectMake(0, 0,
 self.frame.size.width + radius,
 self.frame.size.height + radius);
 
 if (CGRectContainsPoint(frame, point)) {
 return self;
 }
 return [super hitTest:point withEvent:event];
 
 }
 */
/*
 -(id)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
 id hitView = [super hitTest:point withEvent:event];
 if (hitView == self) return nil;
 else return hitView;
 }
 */


@end
