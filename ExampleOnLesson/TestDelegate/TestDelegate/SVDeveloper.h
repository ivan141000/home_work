//
//  SVDeveloper.h
//  TestDelegate
//
//  Created by Viktor Siedov on 04.05.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SVClient.h"

@interface SVDeveloper : NSObject <SVClient>
-(BOOL)makeSomething:(SVClient *)client;

@end
