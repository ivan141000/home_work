//
//  AppDelegate.m
//  Test2ViewController
//
//  Created by Viktor Siedov on 27.07.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self createUI];
    return YES;
}

-(void)createUI{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    MainViewController *mainViewController = [[MainViewController alloc] init];
    self.window.rootViewController = mainViewController;
    [self.window makeKeyAndVisible];
}

@end
