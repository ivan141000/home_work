//
//  ViewController.m
//  ExampleGCD
//
//  Created by Viktor Siedov on 29.10.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import "ViewController.h"
#import "FileManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FileManager *fileManager = [FileManager sharedInstance];
    NSLog(@"file manager %i", fileManager.intNumber);
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
