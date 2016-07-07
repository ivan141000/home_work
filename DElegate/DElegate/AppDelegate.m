//
//  AppDelegate.m
//  DElegate
//
//  Created by ivan on 13.05.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "AppDelegate.h"
#import "DEToaster.h"
#import "DEToastBread.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSArray *breads = [[NSArray alloc]init];
    DEToaster *toaster = [[DEToaster alloc]init];
    
    
    for (NSInteger i = 0; i < 30; i++) {
        DEToastBread *toastBread = [[DEToastBread alloc]init];
        toastBread.delegate = toaster;
        toastBread.name = [NSString stringWithFormat:@"odesskiy %ld", (long)i];
        
        
        
        if ([toaster fry:toastBread]) {
            toastBread.time = arc4random()%1000;
            NSLog(@"%ld \n add itae number %li", (long)toastBread.time,(long)i);
            [toaster turf:toastBread];
        }
        
       
            NSLog(@"%li",toastBread.time);
        
        breads = [breads arrayByAddingObject:toastBread];
    }
    
    /* здесь я буду выводить отчет тостера */

   NSLog(@"report = %@",toaster.report);
    DEToaster *toaster2  = [[DEToaster alloc]init];
    
    for (NSInteger i = 0; i < [breads count]; i++) {
        DEToastBread *toastBread = [breads objectAtIndex:i];
        
       if (!toastBread.ready) {
           toastBread.delegate = toaster2;
           [toaster2 fry:toastBread];
           [toaster2 turf:toastBread];
           NSLog(@"report2 = %@", toaster2.report);
           
        }
    }
    
    return YES;
}

@end
