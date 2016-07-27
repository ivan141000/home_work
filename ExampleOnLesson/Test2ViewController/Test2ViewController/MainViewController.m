//
//  MainViewController.m
//  Test2ViewController
//
//  Created by Viktor Siedov on 27.07.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
- (instancetype)init
{
    self = [super init];
    NSLog(@"init");
    return self;
}

-(void)loadView{
    [super loadView];
    NSLog(@"loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor yellowColor]];
    NSLog(@"viewDidLoad");
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
    
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear");
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");
    
}

- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    NSLog(@"viewDidDisappear");
}

- (void)viewWillLayoutSubviews{
    NSLog(@"viewWillLayoutSubviews");
    
}

- (void)viewDidLayoutSubviews{
    NSLog(@"viewDidLayoutSubviews");
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
