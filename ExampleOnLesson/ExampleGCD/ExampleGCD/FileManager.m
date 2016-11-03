//
//  FileManager.m
//  ExampleGCD
//
//  Created by Viktor Siedov on 29.10.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import "FileManager.h"

@implementation FileManager

+ (FileManager *)sharedInstance {
    static FileManager *sharedInstance = nil;
    static dispatch_once_t onceToken; // onceToken = 0
    dispatch_once(&onceToken, ^{
        sharedInstance = [[FileManager alloc] init];
    });
    
    return sharedInstance;
}

@end
