//
//  PRTiger.h
//  PRProtocol
//
//  Created by ivan on 22.04.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mammals.h"
@interface PRTiger : NSObject <Mammals>

-(void)walk;

@property(strong,nonatomic)NSString* name;

@end
