//
//  FileManager.h
//  ExampleGCD
//
//  Created by Viktor Siedov on 29.10.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface FileManager : NSObject

@property(nonatomic,assign)NSInteger intNumber;
+ (FileManager *)sharedInstance;

@end
