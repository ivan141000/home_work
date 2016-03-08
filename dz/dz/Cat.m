//
//  Cat.m
//  dz
//
//  Created by ivan on 23.02.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "Cat.h"

@implementation Cat

@synthesize name = _name;
@synthesize age = _age;
@synthesize weight = _weight;
@synthesize height = _height;
@synthesize myCat =_myCat;
@synthesize queryCount = _queryCount;


-(instancetype)init
{
    self = [super init];
    self.name = @"Tima";
    self.age = 2;
    self.weight = 7.5f;
    self.height = [NSNumber numberWithDouble:2];
    return self;
}


-(BOOL *)myCat{
    self.queryCount++;
    return _myCat;
    

}
-(NSInteger )queryCount
{
    NSLog(@"function ");
    return _queryCount;
}

-(void)setName:(NSString *)name
{
    
    NSLog(@"function setter name called");
    _name = name;
}

-(NSString *)name
{
    NSLog(@"function getter name called");
    self.queryCount++;
    return _name;
    
}

-(void)setAge:(NSInteger)age
{
    NSLog(@"function setter age called");
    _age = age;
}

-(NSInteger )age
{
    NSLog(@"function getter age called");
    return _age;
}

-(void) setWeight:(CGFloat )weight
{
    NSLog(@"function setter weight called");
    weight = _weight;
}
-(CGFloat )weight
{
    NSLog(@"function getter weight called");
    return _weight;
}

-(void)setHeight:(NSNumber *)height
{
    NSLog(@"function setter height called");
    height = _height;
}

-(NSNumber *)height
{
    NSLog(@"function getter height called");
    return _height;
}

-(void)dealloc
{
    NSLog(@"dealloc this object");
}


@end
