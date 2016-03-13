//
//  AppDelegate.m
//  NSArray
//
//  Created by ivan on 12.03.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "AppDelegate.h"
#import "Domestic_animal.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
      Domestic_animal * myDA = [[Domestic_animal alloc]init];
    [myDA setDish:@"rice"];
//    Dog * simpleDog = [[Dog alloc]init];
    NSArray * arrayAnimal = @[@"domastic_animal", @"dog"];
    for (int i = 0; i < [arrayAnimal count]; i++) {
        NSLog(@"Simple dog eat %@",arrayAnimal);
    }
    return YES;
}
-(void)eatSomething:(NSString *) dish
{
    NSLog(@"Domestic animal eat %@" , dish );
}

@end
