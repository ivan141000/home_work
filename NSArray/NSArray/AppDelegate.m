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
    
    
    NSSortDescriptor *descriptionName = [[NSSortDescriptor alloc]initWithKey:@"name" ascending:YES];
    
    NSArray *arrDescription = [[NSArray alloc] initWithObjects:descriptionName, nil];
    allAnimals = [allAnimals sortedArrayUsingDescriptors:arrDescription];
    
    NSLog(@"allAnimals = %@",allAnimals);
    
    allAnimals = [self sortArrayByTypeOfAnimal:allAnimals];
    NSLog(@"Finally sorting %@",allAnimals);
       return YES;

   }

-(NSArray*)sortArrayByTypeOfAnimal:(NSArray *)array
{
    NSArray *arrayDomestic = [[NSArray alloc]init];
    NSArray *arrayWild = [[NSArray alloc]init];
    for (NSInteger i = 0; i < [array count]; i++) {
        if ([[array objectAtIndex:i] isKindOfClass:[Domestic_animal class]]) {
            arrayDomestic = [arrayDomestic arrayByAddingObject: [array objectAtIndex:i]];
        }else if([[array objectAtIndex:i] isKindOfClass:[Wild_animal class]]){
            arrayWild = [arrayWild arrayByAddingObject:[array objectAtIndex:i]];
        }
    }
    array = [arrayDomestic arrayByAddingObjectsFromArray:arrayWild];
    return array;
}

@end
