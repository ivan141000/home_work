//
//  PRPerch.h
//  PRProtocol
//
//  Created by ivan on 22.04.16.
//  Copyright © 2016 Myai. All rights reserved.
//
//рыба
#import <Foundation/Foundation.h>
#import "Fish.h"
@interface PRPerch : NSObject <Fish>

-(void)swim;

@property(strong,nonatomic)NSString* name;

@end
