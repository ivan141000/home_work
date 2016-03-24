//
//  Dog.m
//  NSArray
//
//  Created by ivan on 13.03.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "Dog.h"

@implementation Dog

-(instancetype)init
{
    self = [super init];
    self.name = @"Charik";
    self.age = 3;
    self.weight = 43.2;
    self.height = 0.5;
    self.dish = @"meat";
    return self;
}
-(void)eatSomething:(NSString *)dish
{
    NSLog(@"Dog eat: %@ ",self.dish);
}

@end
