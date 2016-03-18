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
    
    NSArray *arrayAnimal = [[NSArray alloc]initWithObjects:chicken,cat,dog, nil];
    for (int i = 0; i < [arrayAnimal count]; i++) {
        Domestic_animal *eat = [arrayAnimal objectAtIndex:i];
        NSLog(@"Domestic animals eat %@",eat.dish);
    }
return YES;
}
-(void)eatSomething:(NSString *) dish
{
    NSLog(@"Chicken eat %@" ,dish );
}

@end
