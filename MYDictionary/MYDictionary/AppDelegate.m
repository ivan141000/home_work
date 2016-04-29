//
//  AppDelegate.m
//  MYDictionary
//
//  Created by ivan on 16.04.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "AppDelegate.h"
#import "MYAnimals.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    MYAnimals *number1 = [[MYAnimals alloc]init];
    number1.variety = @"dog";
    number1.name = @"Scharik";
    number1.weight = 41.2f;
    
    MYAnimals *number2 = [[MYAnimals alloc]init];
    number2.variety = @"cat";
    number2.name = @"Pushok";
    number2.weight = 6.2f;

    MYAnimals *number3 = [[MYAnimals alloc]init];
    number3.variety = @"chicken";
    number3.name = @"Raba";
    number3.weight = 4.5f;
    
    MYAnimals *number4 = [[MYAnimals alloc]init];
    number4.variety = @"marmot";
    number4.name = @"Elvin";
    number4.weight = 2.2f;
    
    MYAnimals *number5 = [[MYAnimals alloc]init];
    number5.variety = @"wolf";
    number5.name = @"Koala";
    number5.weight = 50;
    
    MYAnimals *number6 = [[MYAnimals alloc]init];
    number6.variety = @"shark";
    number6.name = @"Akyla";
    number6.weight = 250.5f;
    
    MYAnimals *number7 = [[MYAnimals alloc]init];
    number7.variety = @"alligator";
    number7.name = @"Aligator";
    number7.weight = 134.2f;
    
    MYAnimals *number8 = [[MYAnimals alloc]init];
    number8.variety = @"badger";
    number8.name = @"Barsyk";
    number8.weight = 12.2f;
    
    MYAnimals *number9 = [[MYAnimals alloc]init];
    number9.variety = @"bull";
    number9.name = @"Byk";
    number9.weight = 300.2f;
    
    MYAnimals *number10 = [[MYAnimals alloc]init];
    number10.variety = @"cheetah";
    number10.name = @"Gepard";
    number10.weight = 73.52f;
    
    MYAnimals *number11 = [[MYAnimals alloc]init];
    number11.variety = @"goose";
    number11.name = @"Gyse";
    number11.weight = 10.2f;
    
    MYAnimals *number12 = [[MYAnimals alloc]init];
    number12.variety = @"coon";
    number12.name = @"Enot";
    number12.weight = 7.2f;
    
    MYAnimals *number13 = [[MYAnimals alloc]init];
    number13.variety = @"whale";
    number13.name = @"Kit";
    number13.weight = 934.7f;
    
    MYAnimals *number14 = [[MYAnimals alloc]init];
    number14.variety = @"goat";
    number14.name = @"Koza";
    number14.weight = 35.2f;
    
    MYAnimals *number15 = [[MYAnimals alloc]init];
    number15.variety = @"rabbit";
    number15.name = @"Krolik";
    number15.weight = 18.3f;
    
    MYAnimals *number16 = [[MYAnimals alloc]init];
    number16.variety = @"mole";
    number16.name = @"Krot";
    number16.weight = 4.2f;
    
    MYAnimals *number17 = [[MYAnimals alloc]init];
    number17.variety = @"marten";
    number17.name = @"Kyniza";
    number17.weight = 6.45f;
    
    MYAnimals *number18 = [[MYAnimals alloc]init];
    number18.variety = @"rock";
    number18.name = @"Langust";
    number18.weight = 56.2f;
    
    MYAnimals *number19 = [[MYAnimals alloc]init];
    number19.variety = @"lemur";
    number19.name = @"Lemur";
    number19.weight = 23.2f;
    
    MYAnimals *number20 = [[MYAnimals alloc]init];
    number20.variety = @"elk";
    number20.name = @"Los";
    number20.weight = 34.7f;
    
    MYAnimals *number21 = [[MYAnimals alloc]init];
    number21.variety = @"slots";
    number21.name = @"Lenivez";
    number21.weight = 29.2f;

    MYAnimals *number22 = [[MYAnimals alloc]init];
    number22.variety = @"fox";
    number22.name = @"Lisiza";
    number22.weight = 50.4f;

    MYAnimals *number23 = [[MYAnimals alloc]init];
    number23.variety = @"frog";
    number23.name = @"Lagusha";
    number23.weight = 3.3f;

    MYAnimals *number24 = [[MYAnimals alloc]init];
    number24.variety = @"macaque";
    number24.name = @"Makaka";
    number24.weight = 46.2f;

    MYAnimals *number25 = [[MYAnimals alloc]init];
    number25.variety = @"bear";
    number25.name = @"Medved";
    number25.weight = 81.9f;

    MYAnimals *number26 = [[MYAnimals alloc]init];
    number26.variety = @"walrus";
    number26.name = @"Morj";
    number26.weight = 34.2f;

    MYAnimals *number27 = [[MYAnimals alloc]init];
    number27.variety = @"rhino";
    number27.name = @"Nasorog";
    number27.weight = 84.3f;

    MYAnimals *number28 = [[MYAnimals alloc]init];
    number28.variety = @"sheep";
    number28.name = @"Ovza";
    number28.weight = 32.6f;

    MYAnimals *number29 = [[MYAnimals alloc]init];
    number29.variety = @"lobster";
    number29.name = @"Omar";
    number29.weight = 1.2f;
    
    MYAnimals *number30 = [[MYAnimals alloc]init];
    number30.variety = @"liard";
    number30.name = @"Jascheriza";
    number30.weight = 37.82f;

    NSArray *arrayAnimals = [[NSArray alloc]initWithObjects:number1,number2,number3,number4, nil];
    NSArray *arrayKeys = [[NSArray alloc]init];
     for (NSInteger i = 0; i < [arrayAnimals count]; i++) {
    
        MYAnimals *animal = [arrayAnimals objectAtIndex:i];
        NSString *key = [NSString stringWithFormat:@"%@%@",animal.variety,animal.name];
        //NSLog(@"%@",key);
        
         arrayKeys = [arrayKeys arrayByAddingObject:key];
        
    }
   // NSLog(@"%@",arrayKeys);
    
    NSDictionary *dictionaryAnimals = [[NSDictionary alloc] initWithObjects:arrayAnimals forKeys:arrayKeys];
    
    //NSLog(@"%@",dictionaryAnimals);
    
    NSSortDescriptor *descriptor = [[NSSortDescriptor alloc]initWithKey:@"" ascending:YES];
    NSArray *arrayDescriptor = [[NSArray alloc]initWithObjects:descriptor, nil];
    arrayKeys = [arrayKeys sortedArrayUsingDescriptors:arrayDescriptor];
    
    for (NSString *key in [dictionaryAnimals allKeys]) {
        id obj = [dictionaryAnimals objectForKey:key];
        NSLog(@"obj = %@,key = %@", obj,key );
    }
    NSLog(@"%@" , arrayKeys);
    
        return YES;
    }

@end
