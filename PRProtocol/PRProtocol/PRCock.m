//
//  PRCock.m
//  PRProtocol
//
//  Created by ivan on 22.04.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "PRCock.h"

@implementation PRCock

@synthesize name;

-(void)fly{
    NSLog(@"can fly");
}

-(void)setName:(NSString *)name
{
    NSLog(@"name = %@",name);
}

-(instancetype)init{
    self.name = @"Kekyriky";
    
    return self;
}

@end
