//
//  Wild_animal.h
//  NSArray
//
//  Created by ivan on 13.03.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import <Foundation/Foundation.h>
@import CoreGraphics;
@interface WildAnimal : NSObject

@property(strong,nonatomic)NSString *name;
@property(assign,nonatomic)NSInteger levelOfAnger; //from 1 to 10
@property(strong,nonatomic)NSString * dish;
@property(assign,nonatomic)BOOL wild;

-(void)eatSomething;

@end
