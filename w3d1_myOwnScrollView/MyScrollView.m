//
//  MyScrollView.m
//  w3d1_myOwnScrollView
//
//  Created by Seantastic31 on 10/07/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _contentSize = CGSizeMake(1000, 1000);
        _panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panView:)];
        [self addGestureRecognizer:self.panGesture];
        
    }
    return self;
}


- (IBAction)panView:(UIPanGestureRecognizer*)sender
{
    // location changes
    CGPoint translationInView = [self.panGesture translationInView:self];
    CGRect bounds = self.bounds;
    
    // setting new bounds.origin.x relative to frame.origin.x ...
    //bounds.origin.x = self.frame.origin.x + translationInView.x;
    // ...but just need to find new bounds.origin.x vs its original position
    CGFloat newBoundsOriginX = bounds.origin.x - translationInView.x;
    // x-axis so min would be zero
    CGFloat minBoundsOriginX = 0.0;
    // max is difference between width of the contentSize mins the width of the bounds
    CGFloat maxBoundsOriginX = self.contentSize.width - bounds.size.width;
    // new bounds.origin.x would be the max of these three
    bounds.origin.x = fmaxf(minBoundsOriginX, fmin(newBoundsOriginX, maxBoundsOriginX));
    
    // same logic for y-axis
    //bounds.origin.y = self.frame.origin.y + translationInView.y;
    CGFloat newBoundsOriginY = bounds.origin.y - translationInView.y;
    CGFloat minBoundsOriginY = 0.0;
    CGFloat maxBoundsOriginY = self.contentSize.height - bounds.size.height;
    bounds.origin.y = fmax(minBoundsOriginY, fmin(newBoundsOriginY, maxBoundsOriginY));
    
    // reset to new bounds
    self.bounds = bounds;
    // reset to zero
    [self.panGesture setTranslation:CGPointZero inView:self];
    
}

@end
