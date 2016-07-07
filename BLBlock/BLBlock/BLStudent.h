//
//  BLStudent.h
//  BLBlock
//
//  Created by ivan on 05.07.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BLStudent : NSObject

@property(strong,nonatomic) NSString* name;
@property(strong,nonatomic) NSString* surname;
@property(strong,nonatomic) NSArray* marks;
@property(assign,nonatomic) NSInteger averageMark;

-(void)giveMarkbook;

@end
