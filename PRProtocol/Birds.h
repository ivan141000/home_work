//
//  Birds.h
//  PRProtocol
//
//  Created by ivan on 22.04.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Birds <NSObject>

-(void)fly;

@optional
@property(strong,nonatomic)NSString* name;


@end
