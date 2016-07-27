//
//  AppDelegate.m
//  TestXibFiles
//
//  Created by Viktor Siedov on 26.07.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self creatUI];
    return YES;
}

-(void)creatUI{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    FirstViewController *mv = [[FirstViewController alloc] init];
    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:mv];
    
    self.window.rootViewController = nc;
    [self.window makeKeyAndVisible];
    
}

@end
