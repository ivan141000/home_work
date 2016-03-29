//
//  Wolf.m
//  NSArray
//
//  Created by ivan on 13.03.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "Wolf.h"
#import "WildAnimal.h"

@implementation Wolf

-(instancetype)init
{
    self = [super init];
    self.levelOfAnger = 7;
    self.dish = @"hare";
    self.name =@"Akela";
    return self;
}
-(void)eatSomething
{
    //[super eatSomething];
    NSLog(@"Wolf eat: %@ ",self.dish);
}


@end
