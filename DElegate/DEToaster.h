//
//  DEToaster.h
//  DElegate
//
//  Created by ivan on 13.05.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DEToastBread.h"

@interface DEToaster : NSObject <DEToastBread>

@property(strong,nonatomic)NSArray* report;
-(BOOL)fry:(DEToastBread*) bread;
-(void)turf:(DEToastBread*) bread;

@end
