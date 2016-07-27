//
//  FirstViewController.m
//  TestXibFiles
//
//  Created by Viktor Siedov on 26.07.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    [self addCustomButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addCustomButton{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundColor:[UIColor blackColor]];
    [btn setFrame:CGRectMake(50, 50, 100, 50)];
    [btn setTitle:@"Нажми" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(touchUpInSide:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
}

-(void)touchUpInSide:(id)sender{
    SecondViewController *seconViewController = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:seconViewController animated:YES];
}


@end
