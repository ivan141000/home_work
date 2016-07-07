//
//  DEToastBread.h
//  DElegate
//
//  Created by ivan on 13.05.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import <Foundation/Foundation.h>
//@import CoreGraphics;
@protocol DEToastBread;

@interface DEToastBread : NSObject

@property(weak,nonatomic)id <DEToastBread> delegate;
@property(assign,nonatomic) NSInteger time;
@property(assign,nonatomic) BOOL ready;
@property(strong,nonatomic) NSString* name;
@end

@protocol DEToastBread <NSObject>

-(BOOL)fry:(DEToastBread*) bread;
-(void)turf:(DEToastBread*) bread;



@end
