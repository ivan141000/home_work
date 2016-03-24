//
//  Chicken.m
//  NSArray
//
//  Created by ivan on 17.03.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "Chicken.h"

@implementation Chicken

-(instancetype)init
{
    self = [super init];
    self.name = @"Raba";
    self.age = 1;
    self.weight = 12.5;
    self.dish = @"corn";
    return self;
}
-(void)eatSomething
{
    [super eatSomething];
    NSLog(@"Chicken eat: %@ ",self.dish);
    
}


@end
