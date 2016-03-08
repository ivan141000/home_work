//
//  AppDelegate.h
//  dz
//
//  Created by ivan on 23.02.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Cat.h"
#import "Dog.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property(strong,nonatomic)Cat *cat1;
@property(strong,nonatomic)Cat *cat2;
//@property(strong,nonatomic)Cat *myCat;
@property(strong,nonatomic)Dog *lord;

@end

