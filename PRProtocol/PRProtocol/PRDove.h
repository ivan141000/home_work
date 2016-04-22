//
//  PRDove.h
//  PRProtocol
//
//  Created by ivan on 22.04.16.
//  Copyright © 2016 Myai. All rights reserved.
//
//голубь
#import <Foundation/Foundation.h>
#import "Birds.h"
@interface PRDove : NSObject <Birds>

-(void)fly;

@property(strong,nonatomic)NSString* name;

@end
