//
//  Lion.m
//  NSArray
//
//  Created by ivan on 24.03.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "Lion.h"

@implementation Lion

-(instancetype)init
{
    self = [super init];
    self.levelOfAnger = 5;
    self.dish = @"meat";
    self.name = @"Leon";
    self.wild = YES;
    return self;
}
-(void)eatSomething
{
    NSLog(@"Lion eat: %@ ",self.dish);
}


@end
