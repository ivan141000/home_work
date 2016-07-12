//
//  BLStudent.m
//  BLBlock
//
//  Created by ivan on 05.07.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "BLStudent.h"

typedef void(^MarkBlock)(void);

@implementation BLStudent

-(void)giveMarkbook:(MarkBlock)markBlock{

    NSLog(@"give");
}


@end
