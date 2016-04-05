//
//  Tiger.m
//  NSArray
//
//  Created by ivan on 24.03.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "Tiger.h"

@implementation Tiger

-(instancetype)init
{
    self = [super init];
    self.levelOfAnger = 7;
    self.dish = @"meat";
    self.name = @"Sherhan";
    self.wild = YES;
    return self;
}
-(void)eatSomething
{
    NSLog(@"Tiger eat: %@ ",self.dish);
}


@end
