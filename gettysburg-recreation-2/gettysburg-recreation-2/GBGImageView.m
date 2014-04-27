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
    UITouch *touch = [touches anyObject];
    if ([touch.view isKindOfClass:[GBGImageView class]])
        {
            return;
        }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    dragging = NO;
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self];
    CGPoint previous = [touch previousLocationInView:self];
    
    if (!CGAffineTransformIsIdentity(self.transform)) {
        location = CGPointApplyAffineTransform(location, self.transform);
        previous = CGPointApplyAffineTransform(previous, self.transform);
    }
    
    self.frame = CGRectOffset(self.frame,
                              (location.x - previous.x),
                              (location.y - previous.y));
}

- (id) initWithImage:(UIImage *)image {
   self = [super initWithImage:image];
    return self;
}

@end
