//
//  Birds.h
//  PRProtocol
//
//  Created by ivan on 22.04.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Birds <NSObject>

@required
-(void)fly;

@optional
-(void)talk;
@property(strong,nonatomic)NSString* name;


@end
