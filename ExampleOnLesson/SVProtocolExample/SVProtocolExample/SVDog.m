//
//  SVDog.m
//  SVProtocolExample
//
//  Created by Viktor Siedov on 20.04.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import "SVDog.h"

@implementation SVDog

-(BOOL)diagnostic{
    return arc4random()%2;
}
-(void)makePrick{
    NSLog(@"take prick dog");
}

@end
