//
//  Wild_animal.h
//  NSArray
//
//  Created by ivan on 13.03.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import <Foundation/Foundation.h>
@import CoreGraphics;
@interface Wild_animal : NSObject

@property(assign,nonatomic)NSInteger levelOfAnger; //from 1 to 10
@property(strong,nonatomic)NSString * dish;

-(void)eatSomething:(NSString *) dish;

@end
