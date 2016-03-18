//
//  Wild_animal.m
//  NSArray
//
//  Created by ivan on 13.03.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "Wild_animal.h"

@implementation Wild_animal

@synthesize levelOfAnger = _levelOfAnger;
@synthesize dish = _dish;

//-(instancetype)init
//{
//    self = [super init];
//    self.levelOfAnger = 7;
//    return self;
//}

-(void)eatSomething:(NSString *)dish
{
    dish = _dish;
}


@end
