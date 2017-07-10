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
    
    bounds.origin.x = self.frame.origin.x - translationInView.x;
    
    bounds.origin.y = self.frame.origin.y - translationInView.y;
    
    self.bounds = bounds;
    
    // reset to zero
    [self.panGesture setTranslation:CGPointZero inView:self];
    
    
    
    //CGPoint newCenter = CGPointMake(oldCenter.x + translationInView.x, oldCenter.y + translationInView.y);
    //sender.view.center = newCenter;
    
    
    //self.bounds = CGRectMake(self.frame.origin.x, self.frame.origin.y + 100, self.bounds.size.height, self.bounds.size.width);
    
}

@end
