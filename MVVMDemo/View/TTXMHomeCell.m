//
//  TTXMHomeCell.m
//  MVVMDemo
//
//  Created by taitanxiami on 16/3/4.
//  Copyright © 2016年 taitanxiami. All rights reserved.
//

#import "TTXMHomeCell.h"
#import "DDHomeModel.h"
#import <UIImageView+WebCache.h>

@implementation TTXMHomeCell

- (void)awakeFromNib {

}

- (void)configCellWithModel:(DDHomeModel *)model {
    
    self.goodNameLabel.text = model.name;
    self.goodDateLabel.text = model.date;
    self.goodFormatelabel.text = model.formate;
    [self.goodImageView sd_setImageWithURL:[NSURL URLWithString:model.image]];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
