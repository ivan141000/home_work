//
//  AppDelegate.m
//  Primitive type
//
//  Created by Viktor Siedov on 14.03.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import "AppDelegate.h"
//typedef NSInteger Count;

//
//typedef enum:char {
//    ModeComplete,
//    ModeLoad
//}Mode;


typedef NS_ENUM(NSInteger, GenderMode){
    GenderModeFemale = 0,
    GenderModeMale
};


typedef struct{
    NSInteger height;
    NSInteger weigth;
}People;


struct Runner{
    NSInteger height;
    NSInteger weigth;
};
typedef struct Runner Runner;




@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    //example primitive type
    BOOL boolVariable = YES;
    NSInteger integerVariable = 0;
    NSUInteger uintegerVariable = 0;
    CGFloat floatVariable = 0.0;
    
    NSLog(@"%d,  %ld, %f",boolVariable, integerVariable, floatVariable);
    NSLog(@"%ld, %ld, %ld, %ld, %ld", sizeof(boolVariable), sizeof(integerVariable), sizeof(uintegerVariable), sizeof(floatVariable), sizeof(char));
    
    //enumeration
    GenderMode person;
    person = arc4random()%2;
    NSLog(@"%@", person == GenderModeFemale ? @"female" : @"male");

    
    //struct
    People man;
    man.height = 3;
    man.weigth = 4;
    
    CGPoint point;
    CGSize size;
    
    point = CGPointMake(1, 1);
    size = CGSizeMake(4, 4);
    
    CGRect rectagle = CGRectMake(point.x, point.y, size.width, size.height);
    //rectagle.origin; rectagle.size;
    
    BOOL hitToRect = CGRectContainsPoint(rectagle, CGPointMake(2, 2));
    NSLog(@"hit to rect %@", hitToRect ? @"Yes" : @"No");
    
    
    //Class
    return YES;
}

@end
