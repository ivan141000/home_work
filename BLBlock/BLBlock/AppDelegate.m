//
//  AppDelegate.m
//  BLBlock
//
//  Created by ivan on 05.07.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "AppDelegate.h"
#import "BLStudent.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
        BLStudent *student1 = [[BLStudent alloc]init];
        BLStudent *student2 = [[BLStudent alloc]init];
        BLStudent *student3 = [[BLStudent alloc]init];
        BLStudent *student4 = [[BLStudent alloc]init];
        BLStudent *student5 = [[BLStudent alloc]init];
        BLStudent *student6 = [[BLStudent alloc]init];
        BLStudent *student7 = [[BLStudent alloc]init];
        BLStudent *student8 = [[BLStudent alloc]init];
        BLStudent *student9 = [[BLStudent alloc]init];
        BLStudent *student10 = [[BLStudent alloc]init];
    
        
        student1.name = @"Alex";
        student1.surname = @"Kusnez";
        student1.marks = [[NSArray alloc]initWithObjects:[NSNumber numberWithInt:4],@"5",@"4", nil];
        student2.name = @"Dima";
        student2.surname = @"Felodorov";
        student2.marks = [[NSArray alloc]initWithObjects:@"2",@"3",@"2", nil];
        student3.name = @"Georgiy";
        student3.surname = @"Liliza";
        student3.marks = [[NSArray alloc]initWithObjects:@"3",@"3",@"4", nil];
        student4.name = @"Arslan";
        student4.surname = @"Gapisov";
        student4.marks = [[NSArray alloc]initWithObjects:@"5",@"5",@"5", nil];
        student5.name = @"Anastasia";
        student5.surname = @"Skorbenko";
        student5.marks = [[NSArray alloc]initWithObjects:@"90",@"60",@"90", nil];
        student6.name = @"Ivan";
        student6.name = @"Grozniy";
        student6.marks = [[NSArray alloc]initWithObjects:@"5",@"4",@"5", nil];
        student7.name = @"Dima";
        student7.surname = @"Sapat";
        student7.marks = [[NSArray alloc]initWithObjects:@"4",@"3",@"5", nil];
        student8.name = @"Anastasia";
        student8.surname = @"Nasarenko";
        student8.marks = [[NSArray alloc]initWithObjects:@"4",@"3",@"4", nil];
        student9.name = @"Max";
        student9.surname = @"Xodorzov";
        student9.marks = [[NSArray alloc]initWithObjects:@"3",@"3",@"5", nil];
        student10.name = @"Svetlana";
        student10.surname = @"Gushlarik";
        student10.marks = [[NSArray alloc]initWithObjects:@"4",@"5",@"4", nil];
    
    NSArray *students = [[NSArray alloc]initWithObjects:student1,student2,student3,student4,student5,student6,student7,student8,student9,student10, nil];
    
    NSArray *sortedStudents = [students sortedArrayUsingComparator:^NSComparisonResult(student1 , student2){
        return (NSComparisonResult)[student1 compare:student2];
    }];
    };
        
            return YES;
}

@end

