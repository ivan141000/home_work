//
//  PRTiger.m
//  PRProtocol
//
//  Created by ivan on 22.04.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "PRTiger.h"

@implementation PRTiger

@synthesize name;
-(void)walk{
    NSLog(@"can walk");}

-(instancetype)init{
self.name = @"Sherkan";
    return self;}

@end
