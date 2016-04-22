//
//  Fish.h
//  PRProtocol
//
//  Created by ivan on 22.04.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Fish <NSObject>

-(void)swim;

@optional
@property(strong,nonatomic)NSString* name;


@end
