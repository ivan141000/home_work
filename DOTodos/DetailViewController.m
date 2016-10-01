//
//  DetailViewController.m
//  DOTodos
//
//  Created by ivan on 26.07.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "DetailViewController.h"
#import "TableViewController.h"

@interface DetailViewController ()

@property(strong,nonatomic)NSString *stringSaveData;


@end

@implementation DetailViewController

-(void)textFieldDidEndEditing:(UITextField *)textField{

    NSLog(@"%@",textField.text);
    self.stringSaveData = textField.text;
    NSLog(@"string save == %@",self.stringSaveData);
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    [self addToolBar2];
    [self textField];
    [self addDoneButton];
    
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
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 65, self.view.bounds.size.width,self.view.bounds.size.height)];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.font = [UIFont systemFontOfSize:15];
    textField.placeholder = @"What needs to be done?";
    textField.autocorrectionType = UITextAutocorrectionTypeDefault;
    textField.keyboardType = UIKeyboardTypeDefault;
    textField.returnKeyType = UIReturnKeyContinue;
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    textField.contentVerticalAlignment = UIControlContentVerticalAlignmentFill;
    //UIView *secondView = [[UIView alloc]initWithFrame:CGRectMake(0, 80, 320, 520)];
    
    
    textField.delegate = self;
    [self.view addSubview:textField];
}



-(void)addDoneButton{
    
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStylePlain target:self action:@selector(pushButtonDone)];
    [self.navigationItem setRightBarButtonItem:doneButton animated:YES] ;
    [self becomeFirstResponder];
    
}
-(void)pushButtonDone{
    
    [self.navigationController popViewControllerAnimated:YES];
    TableViewController * tableViewController = (TableViewController *)self.stringSaveData 
    [tableViewController saveToTable:someData];
 NSLog(@"push == %@",self.stringSaveData);
}

@end
