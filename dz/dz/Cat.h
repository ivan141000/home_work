//
//  Cat.h
//  dz
//
//  Created by ivan on 23.02.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Cat : NSObject

@property (strong, nonatomic)NSString *name;
@property (assign, nonatomic)NSInteger age;
@property (assign, nonatomic)CGFloat weight;
@property (strong, nonatomic)NSNumber *height;
@property(assign,nonatomic)BOOL *myCat;
@property (assign,nonatomic)NSInteger queryCount;
@end
