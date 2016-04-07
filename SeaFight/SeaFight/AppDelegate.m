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
    
    CGRect ship = CGRectMake(1, 1, 2, 2);
//    CGPoint CGPointAdd(CGPoint p1, CGPoint p2, CGPoint p3, CGPoint p4, CGPoint p5)
//    {
//        return CGPointMake(arc4random()%6, arc4random()%6);
//    }
   CGPoint point1 = CGPointMake(arc4random()%6, arc4random()%6);
    CGPoint point2 = CGPointMake(arc4random()%6, arc4random()%6);
    CGPoint point3 = CGPointMake(arc4random()%6, arc4random()%6);
    CGPoint point4 = CGPointMake(arc4random()%6, arc4random()%6);
    CGPoint point5 = CGPointMake(arc4random()%6, arc4random()%6);
//    Points point1 = CGPointMake(arc4random()%6, arc4random()%6);
//    Points point2 = CGPointMake(arc4random()%6, arc4random()%6);
//    Points point3 = CGPointMake(arc4random()%6, arc4random()%6);
//    Points point4 = CGPointMake(arc4random()%6, arc4random()%6);
//    Points point5 = CGPointMake(arc4random()%6, arc4random()%6);
    
    //NSArray *points = [[NSArray alloc]initWithObjects:point1,point2,point3,point4,point5, nil];
    
    for (NSInteger i = 0; i < 6; i++) {
        NSLog(@"The resulf of the shot = %@",CGRectContainsPoint(ship, point1) ? @"Hit" : @"Past");
    }
    return YES;
}


@end
