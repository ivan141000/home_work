//
//  AppDelegate.m
//  NSArray
//
//  Created by ivan on 12.03.16.
//  Copyright © 2016 Myai. All rights reserved.
//

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
    
    Domestic_animal *chicken = [[Chicken alloc]init];
    Domestic_animal *dog = [[Dog alloc]init];
    Domestic_animal *cat = [[Cat alloc]init];
    chicken.dish = @"corn";
    dog.dish = @"meat";
    cat.dish = @"fish";
//    NSLog(@"Chichen eat %@",chicken.dish);
//    NSLog(@"Dog eat %@",dog.dish);
//    NSLog(@"Cat eat %@",cat.dish);
//    
    
    NSArray *arrayDomesticAnimal = [[NSArray alloc]initWithObjects:chicken,cat,dog, nil];
    for (int i = 0; i < [arrayDomesticAnimal count]; i++) {
        Domestic_animal *eat1 = [arrayDomesticAnimal objectAtIndex:i];
        NSLog(@"Domestic animals eat %@",eat1.dish);
    }
    
    Wild_animal *wolf = [[Wolf alloc]init];
    wolf.dish = @"hare";
    
        NSArray *arrayWildAnimal = [[NSArray alloc]initWithObjects:wolf, nil];
        for (int i = 0; i < [arrayWildAnimal count]; i++) {
            Wild_animal *eat2 = [arrayWildAnimal objectAtIndex:i];
            NSLog(@"Wild animal eat %@",eat2.dish);
        }
return YES;

   }

@end
