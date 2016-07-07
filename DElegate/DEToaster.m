//
//  DEToaster.m
//  DElegate
//
//  Created by ivan on 13.05.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "DEToaster.h"

@implementation DEToaster

-(BOOL)fry:(DEToastBread *)bread{
    NSLog(@"fry");
    BOOL ready = arc4random()%2;
    bread.ready = ready;
    if (!bread.ready) {
        [self otchot:bread];
    }
  //  if (ready == YES) {
    //    [self turf:bread];
//    }
    //[self otchot:bread];
    return ready ;
}
-(void)turf:(DEToastBread *)bread{
    NSLog(@"turf");
    [self otchot:bread];
}
-(void)otchot:(DEToastBread *)bread{
    
    //NSNumber *boolReady = [NSNumber numberWithBool:bread.ready];
    NSNumber *integerTime = [NSNumber numberWithInteger:bread.time];
    NSDictionary *property = [[NSDictionary alloc]initWithObjectsAndKeys:
                              bread.name,@"name",
                              integerTime,@"time",
                              bread.ready ? @"YES":@"NO" ,@"ready",
                              nil];
             /*
    - надо записать свойство хлеба в НСсловарь (имя, время, готовность)
    - этот НСсловарь надо записать в массив свойство репорт
    - нужно будет делать проверку в методе фрай и если хлеб не готов, то запускать метод отчет куда передавать этот хлеб, а если готов - запкскать метод отчет из метода турф(выбросить) 
    */
    if (!self.report) { 
        self.report = [[NSArray alloc]init];
    }
       self.report  = [self.report arrayByAddingObject:property];
}




@end
