//
//  Panther.m
//  NSArray
//
//  Created by ivan on 24.03.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "Panther.h"

@implementation Panther

-(instancetype)init
{
    self = [super init];
    self.levelOfAnger = 9;
    self.dish = @"meat";
    self.name = @"Bagira";
    return self;
}
-(void)eatSomething
{
    NSLog(@"Panther eat: %@ ",self.dish);
}


@end
