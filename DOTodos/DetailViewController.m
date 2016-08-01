//
//  DetailViewController.m
//  DOTodos
//
//  Created by ivan on 26.07.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    [self addToolBar2];
    [self textField];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addToolBar2{
    UIToolbar *toolbar2 = [[UIToolbar alloc] init];
    toolbar2.frame = CGRectMake(0, 518, 320, 50);
    
    UIBarButtonItem *buttonDelete = [[UIBarButtonItem alloc] initWithTitle:@"Delete" style:UIBarButtonItemStylePlain target:self action:@selector(deleteAction)];
    buttonDelete.width = 300.0f;
    
    [toolbar2 setItems:[[NSArray alloc] initWithObjects:buttonDelete, nil]];
    [self.navigationController.view addSubview:toolbar2];

}

-(void)textField{
    UITextField *text = [[UITextField alloc]init];
    //text.placeholder = ;
    
}

@end
