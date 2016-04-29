//
//  SVCat.m
//  SVProtocolExample
//
//  Created by Viktor Siedov on 20.04.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import "SVCat.h"

@implementation SVCat


-(BOOL)diagnostic{
    return arc4random()%2;
}
-(void)makePrick{
    NSLog(@"take prick cat");
}


-(void)howOld{
    NSLog(@"cat 2 years old");
}

@end
