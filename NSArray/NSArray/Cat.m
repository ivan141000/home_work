//
//  Cat.m
//  NSArray
//
//  Created by ivan on 17.03.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "Cat.h"

@implementation Cat

-(instancetype)init
{
    self = [super init];
    self.name = @"Pyshok";
    self.age = 5;
    self.weight = 6.5;
    self.height = 0.15;
    self.dish = @"fish";
    return self;
}

-(void)eatSomething:(NSString *)dish
{
    NSLog(@"Cat eat: %@ ",self.dish);
}

@end
