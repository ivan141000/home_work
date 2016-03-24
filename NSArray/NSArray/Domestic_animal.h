//
//  Domestic_animal.h
//  NSArray
//
//  Created by ivan on 12.03.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import <Foundation/Foundation.h>
@import CoreGraphics;
@interface Domestic_animal : NSObject

@property(strong,nonatomic)NSString *name;
@property(assign,nonatomic)NSInteger age;
@property(assign,nonatomic)CGFloat weight;
@property(assign,nonatomic)CGFloat height;
@property(strong,nonatomic)NSString *dish;

-(void)eatSomething;



@end
