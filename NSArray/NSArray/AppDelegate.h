//
//  AppDelegate.h
//  NSArray
//
//  Created by ivan on 12.03.16.
//  Copyright © 2016 Myai. All rights reserved.
//



@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (retain, nonatomic) NSArray *techList;
-(void)sortUsingDescriptors:(NSArray *)sortDescriptors;
@end

