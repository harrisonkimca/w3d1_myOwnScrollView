//
//  MyScrollView.h
//  w3d1_myOwnScrollView
//
//  Created by Seantastic31 on 10/07/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

@property (nonatomic) CGSize contentSize;
@property (strong, nonatomic) UIPanGestureRecognizer *panGesture;

- (IBAction)panView:(UIPanGestureRecognizer*)sender;

@end
