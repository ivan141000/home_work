//
//  PRDove.m
//  PRProtocol
//
//  Created by ivan on 22.04.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "PRDove.h"

@implementation PRDove

@synthesize name;
-(void)fly{
    NSLog(@"can fly");}
-(instancetype)init{
    self.name = @"Zup";
    return self;}
@end
