//
//  Hare.m
//  NSArray
//
//  Created by ivan on 24.03.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "Hare.h"

@implementation Hare

-(instancetype)init
{
    self = [super init];
    self.levelOfAnger = 1;
    self.dish = @"carrot";
    self.name = @"Sheriy";
    return self;
}
-(void)eatSomething
{
    NSLog(@"Hare eat: %@ ",self.dish);
}


@end
