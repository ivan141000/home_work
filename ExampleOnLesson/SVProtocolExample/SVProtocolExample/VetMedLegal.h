//
//  VetMedLegal.h
//  SVProtocolExample
//
//  Created by Viktor Siedov on 20.04.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol VetMedLegal <NSObject>


@property(strong, nonatomic)NSString* name;

-(BOOL)diagnostic;
-(void)makePrick;

@optional
-(void)howOld;

@end
