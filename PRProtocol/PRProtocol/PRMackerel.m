//
//  PRMackerel.m
//  PRProtocol
//
//  Created by ivan on 22.04.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "PRMackerel.h"

@implementation PRMackerel

@synthesize name;
-(void)swim{
    NSLog(@"can swim");}

-(instancetype)init{
    self.name = @"Sky";
    return self;}


@end
