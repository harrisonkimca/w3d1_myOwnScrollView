//
//  ViewController.m
//  w3d1_myOwnScrollView
//
//  Created by Seantastic31 on 10/07/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

//@property (strong, nonatomic) UIView *masterView;
@property (strong, nonatomic) MyScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //self.masterView = [UIView new];
    //[self.view addSubview:self.masterView];
    
    // ***** alloc/init the bounds *****
    self.scrollView = [[MyScrollView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:self.scrollView];
    
    UIView *redView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    
    UIView *greenView = [[UIView alloc]initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    
    UIView *blueView = [[UIView alloc]initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    
    UIView *yellowView = [[UIView alloc]initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    
    //[self.masterView addSubview:redView];
    //[self.masterView addSubview:greenView];
    //[self.masterView addSubview:blueView];
    //[self.masterView addSubview:yellowView];
    
    [self.scrollView addSubview:redView];
    [self.scrollView addSubview:greenView];
    [self.scrollView addSubview:blueView];
    [self.scrollView addSubview:yellowView];
    
}


- (void)viewDidAppear:(BOOL)animated
{
    //self.masterView.bounds = CGRectMake(self.masterView.frame.origin.x, self.masterView.frame.origin.y + 100, self.masterView.bounds.size.height, self.masterView.bounds.size.width);
}

@end
