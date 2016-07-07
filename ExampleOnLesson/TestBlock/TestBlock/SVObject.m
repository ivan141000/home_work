//
//  SVObject.m
//  TestBlock
//
//  Created by Viktor Siedov on 09.06.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import "SVObject.h"

@implementation SVObject

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        __weak SVObject *objectSelf = self;
        
        _testblock = ^(NSString* parametr){
            NSLog(@"_testblock  = %@  object = %@", parametr, objectSelf);
        };
    }
    return self;
}

@end
