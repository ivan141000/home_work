//
//  AppDelegate.m
//  dz
//
//  Created by ivan on 23.02.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
// татимолкиокиомукиукомукимки

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
        Cat *tom =  [[Cat alloc] init];
    self.cat1 = tom;
    Cat *djeri = [[Cat alloc] init];
    self.cat2 = djeri;
    
    self.cat2.name = @"Bob";
    self.cat1.myCat=YES;
    self.cat2.myCat=NO;
    
    if (self.cat2.myCat) {
        NSLog(@"This is my cat");
    }else{
        NSLog(@"This is another cat");}
        
    NSLog(@"end call");

    NSLog([NSNumber numberWithInteger:self.cat2.queryCount+self.cat1.queryCount].stringValue);
    
    return YES;
}


@end
