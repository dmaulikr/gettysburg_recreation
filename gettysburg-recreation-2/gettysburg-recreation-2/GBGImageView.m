//
//  GBGImageView.m
//  gettysburg-recreation-2
//
//  Created by Elmira on 4/25/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import "GBGImageView.h"

@implementation GBGImageView

// Give this custom view have an initWithImage method
- (id) initWithImage:(UIImage *)image {
    self = [super initWithImage:image];
    return self;
}

// Override the touchesBegan: withEvent: method to only respond to
// touches of GBGImageViews
- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    if ([touch.view isKindOfClass:[GBGImageView class]])
        {
            return;
        }
}

// Override the touchesMoved: withEvent: method for smooth movement
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

@end
