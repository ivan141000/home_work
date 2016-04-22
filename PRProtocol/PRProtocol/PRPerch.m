//
//  PRPerch.m
//  PRProtocol
//
//  Created by ivan on 22.04.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "PRPerch.h"

@implementation PRPerch

@synthesize name;
-(void)swim{
    NSLog(@"can swim");}
-(instancetype)init{
    self.name = @"Qua";
    return self;}

@end
