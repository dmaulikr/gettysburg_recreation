//
//  GBGMainView.m
//  gettysburg-recreation-2
//
//  Created by Ellen Hui on 3/27/14.
//  Copyright (c) 2014 Harvey Mudd. All rights reserved.
//

#import "GBGMainView.h"

@implementation GBGMainView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.contents = (id)[UIImage imageNamed:@"placeholderMap.png"].CGImage;

        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    self.layer.contents = (id)[UIImage imageNamed:@"placeholderMap.png"].CGImage;

    //UIImage *map = [UIImage imageNamed:@"placeholderMap.png"].CGImage;
    // Drawing code
}

@end
