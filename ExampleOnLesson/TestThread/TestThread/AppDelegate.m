//
//  AppDelegate.m
//  TestThread
//
//  Created by Viktor Siedov on 24.06.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate (){
    NSArray *array;
}

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    

    array = [[NSArray alloc] init];
    for (NSInteger i = 0; i < 2; i++) {
        NSThread *thread = [[NSThread alloc] initWithTarget:self selector:@selector(someMethod) object:nil];
        thread.name = [NSString stringWithFormat:@"thread%li", (long)i];
        
        [thread start];
    }
    
//    
//    for (NSInteger i = 0; i < 2000000; i++) {
//        NSLog(@"bum");
//    }
//
    [self performSelector:@selector(selectorDelay:) withObject:@"" afterDelay:10];
    return YES;
}

- (void)someMethod{
    @autoreleasepool {
        NSLog(@"star thread %@", [[NSThread currentThread] name]);
        double startTime = CACurrentMediaTime();
        @synchronized (self) {
            for (NSInteger i = 0; i < 200; i++) {
                array = [array arrayByAddingObject:[[NSThread currentThread] name]];
            }
        }

        NSLog(@"end thread %@  time = %f",[[NSThread currentThread] name],CACurrentMediaTime() - startTime );
    }
}

-(void)selectorDelay:(NSString *)string{
    
}

@end
