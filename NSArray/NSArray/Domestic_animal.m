//
//  Domestic_animal.m
//  NSArray
//
//  Created by ivan on 12.03.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "Domestic_animal.h"

@implementation Domestic_animal

@synthesize name = _name;
@synthesize age = _age;
@synthesize weight = _weight;
@synthesize height = _height;
@synthesize dish = _dish;

//-(instancetype)init
//{
//    self = [super init];
//    self.name =@"Tima";
//    self.dish = @"bread";
//    return self;
//}

-(void)eatSomething:(NSString *)dish
{
    dish = _dish;
}

@end
