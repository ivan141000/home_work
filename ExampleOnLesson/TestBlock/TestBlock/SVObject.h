//
//  SVObject.h
//  TestBlock
//
//  Created by Viktor Siedov on 09.06.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^TestBlock)(NSString *par);

@interface SVObject : NSObject

@property(copy, nonatomic)TestBlock testblock;

@end
