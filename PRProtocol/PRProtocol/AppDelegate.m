//
//  AppDelegate.m
//  PRProtocol
//
//  Created by ivan on 22.04.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "AppDelegate.h"
#import "PRCock.h"
#import "PRDove.h"
#import "PRPerch.h"
#import "PRMackerel.h"
#import "PRTiger.h"
#import "PRLazybones.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    PRCock *cock = [[PRCock alloc]init];
    PRDove *dove = [[PRDove alloc]init];
    PRPerch *perch = [[PRPerch alloc]init];
    PRMackerel *mackerel = [[PRMackerel alloc]init];
    PRTiger *tiger = [[PRTiger alloc]init];
    PRLazybones *lazybones = [[PRLazybones alloc]init];
    
    NSArray *listAnimals = [NSArray arrayWithObjects:cock,dove,perch,mackerel,tiger,lazybones, nil];
    
    for (id animal in listAnimals) {
        [animal setName:@"name"];
        
        if ([animal conformsToProtocol:@protocol(Birds)]) { //проверку на поддержку протокола
            id bird = animal; //указать, что эта переменная поддерживает протокол
            [animal fly];
            if([bird respondsToSelector:@selector(talk)]) {
                [bird talk];
            }
        }
        
        else if ([animal conformsToProtocol:@protocol(Fish)]) {
            id fish = animal;
            [animal swim];
            if ([fish respondsToSelector:@selector(kqa)]) {
                [fish kqa];
            }
        }
        else if ([animal respondsToSelector:@selector(walk)]) {
            [animal walk];
        }else{ NSLog(@"This animal is lazybones");
        }
         // проверить ленивца на то, что он не выполняет ни один из выше указанных протоколов
        NSLog(@"list animal = %@",animal);
        }
    return YES;
}

@end
