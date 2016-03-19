//
//  AppDelegate.m
//  NSArray
//
//  Created by ivan on 12.03.16.
//  Copyright © 2016 Myai. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Domestic_animal.h"
#import "Chicken.h"
#import "Dog.h"
#import "Cat.h"
#import "Wild_animal.h"
#import "Wolf.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //Domestic_animal *chicken = [[Chicken alloc]init];
    Dog *dog = [[Dog alloc]init];
    Cat *cat = [[Cat alloc]init];
    
    
    Chicken *chicken2 = [[Chicken alloc] init];
    chicken2.name = @"Raba";
    chicken2.age = 1;
    chicken2.weight = 12.5f;
    chicken2.dish = @"corn";
    
    Chicken *chicken3 = [[Chicken alloc] init];
    chicken3.name = @"Euro";
    chicken3.age = 1;
    chicken3.weight = 15.5f;
    chicken3.dish = @"corn";
    
    Chicken *chicken4 = [[Chicken alloc] init];
    chicken4.name = @"usa";
    chicken4.age = 1;
    chicken4.weight = 10.5f;
    chicken4.dish = @"corn";

    
    
//    chicken.dish = @"corn";
//    dog.dish = @"meat";
//    cat.dish = @"fish";
//    NSLog(@"Chichen eat %@",chicken.dish);
//    NSLog(@"Dog eat %@",dog.dish);
//    NSLog(@"Cat eat %@",cat.dish);
//    
//    
//    NSArray *arrayDomesticAnimal = [[NSArray alloc]initWithObjects:dog,chicken2,cat,chicken3,chicken4, nil];
//    for (int i = 0; i < [arrayDomesticAnimal count]; i++) {
//        Domestic_animal *animal = [arrayDomesticAnimal objectAtIndex:i];
//        NSLog(@"name animal %@", animal.name);
//        NSLog(@"age animal %li", animal.age);
//        NSLog(@"weight animal %f", animal.weight);
//        [animal eatSomething];
//        //[animal eatSomething:@"corm"];
//        if ([animal isKindOfClass:[Chicken class]]) {
//            NSLog(@"I want fly");
//        }
//        
//        if ([animal isKindOfClass:[Dog class]]) {
//            NSLog(@"I'm dog and say gaf gaf");
//        }
//        
//    }
    
    Wolf *wolf = [[Wolf alloc]init];
    wolf.levelOfAnger = 7;
    wolf.dish = @"hare";
    
    NSArray *animals = [[NSArray alloc]initWithObjects:dog,cat,wolf,chicken3, nil];
    for (int i = 0; i < [animals count]; i++) {
        Wild_animal *animal = [animals objectAtIndex:i];
        [animal eatSomething];
        
        if ([animal isKindOfClass:[Wolf class]]) {
            NSLog(@"wolf levelOfAnger : %li", animal.levelOfAnger);
        }
        
    }
    
    
    return YES;

   }

@end
