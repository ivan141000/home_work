//
//  AppDelegate.m
//  SeaFight
//
//  Created by ivan on 07.04.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

//struct Points {
//
//    CGFloat x;
//    CGFloat y;
//};
//typedef struct CGPoint Points;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    CGRect ship = CGRectMake(1, 1, 44, 9);
//    CGPoint CGPointAdd(CGPoint p1, CGPoint p2, CGPoint p3, CGPoint p4, CGPoint p5)
//    {
//        return CGPointMake(arc4random()%6, arc4random()%6);
//    }
    NSArray *arr = [[NSArray alloc]init];
    arr = [self pointsCreate];
    
    [self shipFight:arr shipSetObject:&ship];
    NSLog(@"%@",NSStringFromCGRect(ship));
    
    return YES;
    
}

-(NSArray*)pointsCreate{

    NSArray *arr = [[NSArray alloc]init];
    for (NSInteger t = 0; t < 6; t++) {
        CGPoint point = CGPointMake(arc4random()%10, arc4random()%2);
        NSValue *valuePoint = [NSValue valueWithCGPoint:point];
        arr = [arr arrayByAddingObject:valuePoint];
    }

    return arr ;
}

-(void)shipFight:(NSArray*)arr shipSetObject:(CGRect *)ship
{
    
    for (NSInteger i = 0; i < [arr count]; i++) {
        
        NSValue *valuePoint = [arr objectAtIndex:i];
        NSLog(@"%@",NSStringFromCGPoint(valuePoint.CGPointValue));
        NSLog(@"The resulf of the shot = %@",CGRectContainsPoint(*ship,valuePoint.CGPointValue) ? @"Hit" : @"Past");
        
        *ship = CGRectMake(0, 10, 30, 20);
    }
 
}
@end
