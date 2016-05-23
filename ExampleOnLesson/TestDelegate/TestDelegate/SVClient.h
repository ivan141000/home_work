//
//  SVClient.h
//  TestDelegate
//
//  Created by Viktor Siedov on 04.05.16.
//  Copyright © 2016 Siedov Viktor. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SVClient;

@interface SVClient : NSObject

@property(weak, nonatomic)id <SVClient> delegate;

@end

@protocol SVClient <NSObject>

-(BOOL)makeSomething:(SVClient *)client;

@optional
-(void)makeFinish:(SVClient *)client command:(NSString *)command;

@end
