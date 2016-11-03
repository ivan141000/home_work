//
//  AppDelegate.m
//  ExampleGCD
//
//  Created by Viktor Siedov on 29.10.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import "AppDelegate.h"

#import "FileManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    dispatch_async(dispatch_get_main_queue(), ^{
        //здесь выполняем код и нужную нам задачу
    });
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        //здесь выполняем код и нужную нам задачу
    });
    
    dispatch_queue_t queueConcurrent = dispatch_queue_create("com.myapp.queueConcurrent", DISPATCH_QUEUE_CONCURRENT);
    
    dispatch_async(queueConcurrent, ^{
        //здесь выполняем код и нужную нам задачу для согласованной очереди
    });
    
    dispatch_queue_t queueSerial = dispatch_queue_create("com.myapp.queueSerial", NULL);
    
    dispatch_async(queueSerial, ^{
        //здесь выполняем код и нужную нам задачу для согласованной очереди
        
    });
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //выполняется один раз
        //здесь в синглтоне выполняются объекты которые выполняются один раз
    });
    
    FileManager *fileManager = [FileManager sharedInstance];
    fileManager.intNumber = 3;
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        //здесь выполняем код и нужную нам задачу
    });
    
    
    dispatch_apply(10, queueConcurrent, ^(size_t index) {
        NSLog(@"dadada %zu",index);
    });
    
    
    
    
    return YES;
}






@end
