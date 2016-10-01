//
//  AppDelegate.m
//  DOTodos
//
//  Created by ivan on 19.07.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "AppDelegate.h"
#import "TableViewController.h"
#import "DetailViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self createUi];
    return YES;
}

-(void)createUi{
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    TableViewController *tvc= [[TableViewController alloc]init];
    UINavigationController *nc = [[UINavigationController alloc]initWithRootViewController:tvc];
    
    self.window.rootViewController = nc;
    [self.window makeKeyAndVisible];
    
                   
}



@end
