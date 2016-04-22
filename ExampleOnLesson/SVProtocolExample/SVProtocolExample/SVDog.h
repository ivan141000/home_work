//
//  SVDog.h
//  SVProtocolExample
//
//  Created by Viktor Siedov on 20.04.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VetMedLegal.h"

@interface SVDog : NSObject<VetMedLegal>

@property(strong, nonatomic)NSString* name;

-(BOOL)diagnostic;
-(void)makePrick;


@end
