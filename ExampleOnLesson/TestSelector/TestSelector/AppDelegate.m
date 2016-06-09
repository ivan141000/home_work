//
//  AppDelegate.m
//  TestSelector
//
//  Created by Viktor Siedov on 25.05.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import "AppDelegate.h"
#import "SVObject.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //SEL methodSelector = @selector(someMethod:value:);
    //SEL methodSelector2 = NSSelectorFromString(@"someMethod");
    
    //[self performSelector:methodSelector withObject:@"test selector in method" withObject:[NSNumber numberWithInteger:2]];
    
    
    SVObject *objectTest = [[SVObject alloc] init];
    
    SEL selector = @selector(someMethodObject:);
    
    if ([objectTest respondsToSelector:selector]) {
        [objectTest performSelector:selector withObject:@"test selector in Object" afterDelay:3];
    }
    
    
    return YES;
}

-(void)someMethod:(NSString *)someString value:(NSNumber *) numVal{
    NSLog(@"%@ %i",someString,numVal.intValue);
}



@end
