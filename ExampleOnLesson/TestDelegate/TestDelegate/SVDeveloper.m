//
//  SVDeveloper.m
//  TestDelegate
//
//  Created by Viktor Siedov on 04.05.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import "SVDeveloper.h"

@implementation SVDeveloper

-(BOOL)makeSomething:(SVClient *)client{
    NSLog(@"Developer make somthing");
    return arc4random()%2;
}

@end
