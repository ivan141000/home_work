//
//  Wolf.m
//  NSArray
//
//  Created by ivan on 13.03.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "Wolf.h"
#import "Wild_animal.h"

@implementation Wolf

-(instancetype)init
{
    self = [super init];
    self.levelOfAnger = 7;
    self.dish = @"hare";
    return self;
}
-(void)eatSomething
{
    [super eatSomething];
    NSLog(@"Wolf eat: %@ ",self.dish);
}


@end
