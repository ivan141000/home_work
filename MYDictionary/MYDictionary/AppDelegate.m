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

    
    NSString *key1 = [NSString stringWithFormat:@"%@%@",number1.variety,number1.name];
    NSLog(@"%@",key1);
    
    NSString *key2 = [NSString stringWithFormat:@"%@%@",number2.variety,number2.name];
    NSLog(@"%@",key2);
    
    NSString *key3 = [NSString stringWithFormat:@"%@%@",number3.variety,number3.name];
    NSLog(@"%@",key3);
    
    NSString *key4 = [NSString stringWithFormat:@"%@%@",number4.variety,number4.name];
    NSLog(@"%@",key4);
    
    NSString *key5 = [NSString stringWithFormat:@"%@%@",number5.variety,number5.name];
    NSLog(@"%@",key5);
    
    NSString *key6 = [NSString stringWithFormat:@"%@%@",number6.variety,number6.name];
    NSLog(@"%@",key6);
    
    NSString *key7 = [NSString stringWithFormat:@"%@%@",number7.variety,number7.name];
    NSLog(@"%@",key7);
    
    NSString *key8 = [NSString stringWithFormat:@"%@%@",number8.variety,number8.name];
    NSLog(@"%@",key8);
    
    NSString *key9 = [NSString stringWithFormat:@"%@%@",number9.variety,number9.name];
    NSLog(@"%@",key9);
    
    NSString *key10 = [NSString stringWithFormat:@"%@%@",number10.variety,number10.name];
    NSLog(@"%@",key10);
    
    NSString *key11 = [NSString stringWithFormat:@"%@%@",number11.variety,number11.name];
    NSLog(@"%@",key11);
    
    NSString *key12 = [NSString stringWithFormat:@"%@%@",number12.variety,number12.name];
    NSLog(@"%@",key12);
    
    NSString *key13 = [NSString stringWithFormat:@"%@%@",number13.variety,number13.name];
    NSLog(@"%@",key13);
    
    NSString *key14 = [NSString stringWithFormat:@"%@%@",number14.variety,number14.name];
    NSLog(@"%@",key14);
    
    NSString *key15 = [NSString stringWithFormat:@"%@%@",number15.variety,number15.name];
    NSLog(@"%@",key15);
    
    NSString *key16 = [NSString stringWithFormat:@"%@%@",number16.variety,number16.name];
    NSLog(@"%@",key16);
    
    NSString *key17 = [NSString stringWithFormat:@"%@%@",number17.variety,number17.name];
    NSLog(@"%@",key17);
    
    NSString *key18 = [NSString stringWithFormat:@"%@%@",number18.variety,number18.name];
    NSLog(@"%@",key18);
    
    NSString *key19 = [NSString stringWithFormat:@"%@%@",number19.variety,number19.name];
    NSLog(@"%@",key19);
    
    NSString *key20 = [NSString stringWithFormat:@"%@%@",number20.variety,number20.name];
    NSLog(@"%@",key20);
    
    NSString *key21 = [NSString stringWithFormat:@"%@%@",number21.variety,number21.name];
    NSLog(@"%@",key21);
    
    NSString *key22 = [NSString stringWithFormat:@"%@%@",number22.variety,number22.name];
    NSLog(@"%@",key22);
    
    NSString *key23 = [NSString stringWithFormat:@"%@%@",number23.variety,number23.name];
    NSLog(@"%@",key23);
    
    NSString *key24 = [NSString stringWithFormat:@"%@%@",number24.variety,number24.name];
    NSLog(@"%@",key24);
    
    NSString *key25 = [NSString stringWithFormat:@"%@%@",number25.variety,number25.name];
    NSLog(@"%@",key25);
    
    NSString *key26 = [NSString stringWithFormat:@"%@%@",number26.variety,number26.name];
    NSLog(@"%@",key26);
    
    NSString *key27 = [NSString stringWithFormat:@"%@%@",number27.variety,number27.name];
    NSLog(@"%@",key27);
    
    NSString *key28 = [NSString stringWithFormat:@"%@%@",number28.variety,number28.name];
    NSLog(@"%@",key28);
    
    NSString *key29 = [NSString stringWithFormat:@"%@%@",number29.variety,number29.name];
    NSLog(@"%@",key29);
    
    NSString *key30 = [NSString stringWithFormat:@"%@%@",number30.variety,number30.name];
    NSLog(@"%@",key30);

    
    
    
    NSDictionary *dictionaryAnimals = [[NSDictionary alloc] initWithObjectsAndKeys:
                                       number1,key1,
                                       number2,key2,
                                       number3,key3,
                                       number4,key4,
                                       number5,key5,
                                       number6,key6,
                                       number7,key7,
                                       number8,key8,
                                       number9,key9,
                                       number10,key10,
                                       number11,key11,
                                       number12,key12,
                                       number13,key13,
                                       number14,key14,
                                       number15,key15,
                                       number16,key16,
                                       number17,key17,
                                       number18,key18,
                                       number19,key19,
                                       number20,key20,
                                       number21,key21,
                                       number21,key22,
                                       number23,key23,
                                       number24,key24,
                                       number25,key25,
                                       number26,key26,
                                       number27,key27,
                                       number28,key28,
                                       number29,key29,
                                       number30,key30,
                                       nil];
    

    for (NSString *key in [dictionaryAnimals allKeys]) {
        id obj = [dictionaryAnimals objectForKey:key];
        NSLog(@"obj = %@,key = %@", obj,key );
        }

    NSMutableArray *sortedArray = [NSMutableArray arrayWithArray:dictionaryAnimals.allKeys];
    [sortedArray sortUsingSelector:@selector(localizedStandardCompare:)];
    
//    for (NSString *key in [dictionaryAnimals allKeys]) {
//        id obj = [dictionaryAnimals objectForKey:key];
//        NSLog(@"obj = %@,key = %@", obj,key );
//    }
    NSLog(@"%@" , sortedArray);


    return YES;
}

@end
