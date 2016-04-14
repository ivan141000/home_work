//
//  AppDelegate.m
//  EXDitionary
//
//  Created by Viktor Siedov on 12.04.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //[NSNumber numberWithFloat:1.82f]
    float height =1.82f;
    NSDictionary *dictionaryPerson = [[NSDictionary alloc] initWithObjectsAndKeys:
                                      @"Vasiliy", @"name",
                                      [NSNumber numberWithInt:28], @"age",
                                      @(height), @"height",
                                      nil];
//    NSDictionary  *dictionaryPerson = [NSDictionary dictionaryWithObjectsAndKeys:@"Vasiliy", @"name",@28, @"age", @(height), @"height", nil];
    //NSDictionary *dictionaryPerson = @{@"name":@"Vasiliy",@"age":@28,@"height":@"height"};
    for (NSString *key in [dictionaryPerson allKeys]) {
        id obj = [dictionaryPerson objectForKey:key];
        NSLog(@"obj = %@", obj);
    }
    
    
    
    return YES;
}


@end
