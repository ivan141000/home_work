//
//  AppDelegate.m
//  NSArray
//
//  Created by ivan on 12.03.16.
//  Copyright © 2016 Myai. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "DomesticAnimal.h"
#import "Chicken.h"
#import "Dog.h"
#import "Cat.h"
#import "WildAnimal.h"
#import "Wolf.h"
#import "Lion.h"
#import "Hare.h"
#import "Tiger.h"
#import "Panther.h"

@interface AppDelegate ()

typedef enum {
    AnimalTypeWild,
    AnimalTypeDomestic
}AnimalGender;


@end

@implementation AppDelegate
@synthesize techList;


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
            DomesticAnimal *animal = [arrayDomesticAnimal objectAtIndex:i];
            [animal eatSomething];
            NSLog(@"name animal : %@", animal.name);
            NSLog(@"age animal : %li", animal.age);
            NSLog(@"weight animal : %f", animal.weight);

        }
        if (i < [arrayWildAnimal count]) {
            WildAnimal *animal = [arrayWildAnimal objectAtIndex:i];
            [animal eatSomething];
            NSLog(@"levelOfAnger : %li", animal.levelOfAnger);
        }
    }
    
    NSArray *allAnimals = [[NSArray alloc]initWithObjects:dog,wolf,chicken,lion,cat,hare,tiger,panther, nil];
    
    
    NSSortDescriptor *descriptionName = [[NSSortDescriptor alloc]initWithKey:@"name" ascending:YES];
    
    NSArray *arrDescription = [[NSArray alloc] initWithObjects:descriptionName, nil];
    allAnimals = [allAnimals sortedArrayUsingDescriptors:arrDescription];
    
    for (NSInteger i = 0; i < [allAnimals count] ; i++) {
        if ([[allAnimals objectAtIndex:i] isKindOfClass:[DomesticAnimal class]]) {
            DomesticAnimal *da = [allAnimals objectAtIndex:i];
            NSLog(@"%@",da.name);
        }else if ([[allAnimals objectAtIndex:i] isKindOfClass:[WildAnimal class]]){
            WildAnimal *wa = [allAnimals objectAtIndex:i];
            NSLog(@"%@",wa.name);
        }
    }
    
    
    
    allAnimals = [self sortArrayByTypeOfAnimal:allAnimals];
    NSLog(@"Finally sorting %@",allAnimals);
    
    AnimalGender animal = arc4random()%2;
    
    NSLog(@"animal = %@", animal == AnimalTypeDomestic ? @"Domestic" : @"Wild");
    
    NSArray *AnimalTypeDomestic = [[NSArray alloc]initWithObjects:dog,chicken,cat, nil];
    
    NSArray *AnimalTypeWild = [[NSArray alloc]initWithObjects:wolf,lion,hare,tiger,panther, nil];
    
    NSInteger maxCount2;
//    if ([AnimalTypeDomestic count] > [AnimalTypeWild count]) {
//        maxCount2 = [AnimalTypeDomestic count];
//    }else{
//        maxCount2 = [AnimalTypeWild count];
//    }
    
    for (NSInteger i = 0; i < 1; i++) {
        if (animal == AnimalTypeDomestic) {
            //DomesticAnimal *animal = [arrayDomesticAnimal objectAtIndex:i];
            NSLog(@"animal type(domestic)  : %@", AnimalTypeDomestic);
            
        }else{(animal == AnimalTypeWild);
            //WildAnimal *animal = [arrayWildAnimal objectAtIndex:i];
            NSLog(@"animal type(wild): %@", AnimalTypeWild);
        }
    }

       return YES;

   }

-(NSArray*)sortArrayByTypeOfAnimal:(NSArray *)array
{
    NSArray *arrayDomestic = [[NSArray alloc]init];
    NSArray *arrayWild = [[NSArray alloc]init];
    for (NSInteger i = 0; i < [array count]; i++) {
        if ([[array objectAtIndex:i] isKindOfClass:[DomesticAnimal class]]) {
            arrayDomestic = [arrayDomestic arrayByAddingObject: [array objectAtIndex:i]];
        }else if([[array objectAtIndex:i] isKindOfClass:[WildAnimal class]]){
            arrayWild = [arrayWild arrayByAddingObject:[array objectAtIndex:i]];
        }
    }
    array = [arrayDomestic arrayByAddingObjectsFromArray:arrayWild];
    return array;
}

@end
