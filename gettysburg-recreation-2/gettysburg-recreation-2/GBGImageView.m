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
    // Get all touches from the user
    UITouch *touch = [touches anyObject];
    
    // Only react if the user touched a GBGImageView class instance
    if ([touch.view isKindOfClass:[GBGImageView class]])
        {
            return;
        }
}

// Override the touchesMoved: withEvent: method for smooth movement
- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    // Get the touch from the user and save its location
    UITouch *touch = [touches anyObject];
    CGPoint currentLocation = [touch locationInView:self];
    CGPoint previousLocation = [touch previousLocationInView:self];
    
    // If there is a transformation that needs to occur
    // (i.e. it is not the identity transformation)
    if (!CGAffineTransformIsIdentity(self.transform)) {
        
        // Return the new current and previous locations resulting from
        // the transformation from their previous respective values
        currentLocation = CGPointApplyAffineTransform(currentLocation, self.transform);
        previousLocation = CGPointApplyAffineTransform(currentLocation, self.transform);
    }
    
    // Offset the view's origin to make movement look smoother
    self.frame = CGRectOffset(self.frame,
                              (currentLocation.x - previousLocation.x),
                              (currentLocation.y - previousLocation.y));
}

@end
