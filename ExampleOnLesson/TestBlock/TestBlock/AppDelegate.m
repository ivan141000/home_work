//
//  AppDelegate.m
//  TestBlock
//
//  Created by Viktor Siedov on 09.06.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import "AppDelegate.h"
#import "SVObject.h"

typedef  void(^TestStringBlock)(NSString *);

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    //__block NSInteger index = 0;
        TestStringBlock testStringBlock;
//    
//    testVoidBlock = ^{
//        
//        NSLog(@"testVoidBlock %li", (long)index++);
//    };
//    
//    testVoidBlock();
    
    
//    [self voidMethod];
//    void(^testStringBlock)(NSString*) = ^(NSString *str){
//        NSLog(@"testStringBlock = %@",str);
//    };
//    
//    testStringBlock(@"adrhrtjertyjrw");
    
    
//    [self blockMethod:^{
//        NSLog(@"init block");
//    }];
    
    SVObject *object = [[SVObject alloc] init];
    testStringBlock = object.testblock;
    testStringBlock(@"adrhertjertyj");
    
    
    return YES;
}

//-(void)voidMethod{
//    NSLog(@"voidMethod");
//}
//
//-(NSString*)stringMethod:(NSString *)par{
//    NSString *string = @"aerhet";
//    NSLog(@"stringMethod");
//    return string;
//}
//-(void)blockMethod:(TestVoidBlock)testVoidBlock{
//    NSLog(@"blockMethod ");
//}

@end
