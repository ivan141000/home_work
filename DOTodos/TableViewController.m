//
//  TableViewController.m
//  DOTodos
//
//  Created by ivan on 26.07.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "DetailViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

@synthesize pointsPlan;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Todos";
    [self addPlusButton];
    [self addToolbar];
    self.view.backgroundColor = [UIColor orangeColor ];


    self.pointsPlan = [NSMutableArray arrayWithObjects:@"Tom", @"Bill", @"Tom", @"Joe", @"Tom", nil];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainCell"];
    
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MainCell" ];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"vncn %d",indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    DetailViewController *detailViewController = [[DetailViewController alloc] init] ;
    
     [self.navigationController pushViewController:detailViewController animated:YES];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return [pointsPlan count];
}

-(void)addPlusButton{
    UINavigationItem *plusItem = [[UINavigationItem alloc]init];
    UIBarButtonItem *plusButton = [[UIBarButtonItem alloc]initWithTitle:@"Add" style:UIBarButtonItemStylePlain target:self action:@selector(plusButton)];
    [plusItem setRightBarButtonItem:plusButton];
    
}


-(void)addToolbar{
    UIToolbar *toolbar = [[UIToolbar alloc] init];
    toolbar.frame = CGRectMake(0, 518, 320, 50);
    
    UIBarButtonItem *buttonAll = [[UIBarButtonItem alloc] initWithTitle:@"All" style:UIBarButtonItemStylePlain target:self action:@selector(allAction)];
    buttonAll.width = 20.0f;
    UIBarButtonItem *buttonActive=[[UIBarButtonItem alloc]initWithTitle:@"Active" style:UIBarButtonItemStylePlain target:self action:@selector(activeAction)];
    buttonActive.width = 100.0f;
    UIBarButtonItem *buttonCompleted = [[UIBarButtonItem alloc] initWithTitle:@"Completed" style:UIBarButtonItemStylePlain target:self action:@selector(completedAction)];
    buttonAll.width = 80.0f;

    [toolbar setItems:[[NSArray alloc] initWithObjects:buttonAll,buttonActive,buttonCompleted, nil]];
    [self.navigationController.view addSubview:toolbar];

}

//-(IBAction)toolBarItem1:(id)sender{
//    [label setText:@"Tool 1 Selected"];
//}
//
//-(IBAction)toolBarItem2:(id)sender{
//    [label setText:@"Tool 2 Selected"];
//}
- (void)viewDidUnload
{
    [super viewDidUnload];
    
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}

@end
