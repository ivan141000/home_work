//
//  TableViewCell.m
//  DOTodos
//
//  Created by ivan on 26.07.16.
//  Copyright © 2016 Myai. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
   
   // self.backgroundView = [UIView orangeColor ];
    [self TVSLabel];
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

//    [self textInputMode];
//    [self textButton];
    
}

-(void)TVSLabel{
    UILabel *cellLabel = [[UILabel alloc]initWithFrame:CGRectMake(91, 15, 200, 200)];
    cellLabel.text = @"bevuwieb";
    cellLabel.backgroundColor = [UIColor greenColor];

}

@end
