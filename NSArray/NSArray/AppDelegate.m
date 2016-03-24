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
#import "Lion.h"
#import "Hare.h"
#import "Tiger.h"
#import "Panther.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    Dog *dog = [[Dog alloc]init];
    Cat *cat = [[Cat alloc]init];
    Chicken *chicken = [[Chicken alloc] init];
    Wolf *wolf = [[Wolf alloc]init];
    Lion *lion = [[Lion alloc]init];
    Hare *hare = [[Hare alloc]init];
    Tiger *tiger = [[Tiger alloc]init];
    Panther *panther = [[Panther alloc]init];
    

    
    
    NSArray *arrayDomesticAnimal = [[NSArray alloc]initWithObjects:dog,chicken,cat, nil];
    
    NSArray *arrayWildAnimal = [[NSArray alloc]initWithObjects:wolf,lion,hare,tiger,panther, nil];
    
        NSInteger maxCount;
    if ([arrayDomesticAnimal count] > [arrayWildAnimal count]) {
        maxCount = [arrayDomesticAnimal count];
    }else{
        maxCount = [arrayWildAnimal count];
    }
    
    for (NSInteger i = 0; i < maxCount; i++) {
        if (i < [arrayDomesticAnimal count]) {
            Domestic_animal *animal = [arrayDomesticAnimal objectAtIndex:i];
            [animal eatSomething];
            NSLog(@"name animal : %@", animal.name);
            NSLog(@"age animal : %li", animal.age);
            NSLog(@"weight animal : %f", animal.weight);

        }
        if (i < [arrayWildAnimal count]) {
            Wild_animal *animal = [arrayWildAnimal objectAtIndex:i];
            [animal eatSomething];
            NSLog(@"levelOfAnger : %li", animal.levelOfAnger);
        }
    }
    
    NSArray *allAnimals = [[NSArray alloc]initWithObjects:dog,wolf,chicken,lion,cat,hare,tiger,panther, nil];
    
    
    return YES;

   }

@end
