//
//  AppDelegate.m
//  SVProtocolExample
//
//  Created by Viktor Siedov on 18.04.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import "AppDelegate.h"
#import "SVCat.h"
#import "SVDog.h"
#import "People.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    SVCat *cat = [[SVCat alloc] init];
    SVDog *dog = [[SVDog alloc] init];
    
    People *people = [[People alloc] init];
    
    
    NSArray *listAnimals = [NSArray arrayWithObjects:dog,cat,people, nil];
    
    for (id animal in listAnimals) {
        if ([animal conformsToProtocol:@protocol(VetMedLegal)]) {
            [animal setName:@"name"];
            NSLog(@"list animal = %@ ", animal);
            if ([animal diagnostic]) {
                [animal makePrick];
            }
            if ([animal respondsToSelector:@selector(howOld)]) {
                [animal howOld];
            }
        }else{
            NSLog(@"It's not animal");
        }

        
    }
    
    
    return YES;
}

@end
