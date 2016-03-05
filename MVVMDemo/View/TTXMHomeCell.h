//
//  TTXMHomeCell.h
//  MVVMDemo
//
//  Created by taitanxiami on 16/3/4.
//  Copyright © 2016年 taitanxiami. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DDHomeModel;
@interface TTXMHomeCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *goodImageView;
@property (weak, nonatomic) IBOutlet UILabel *goodNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *goodFormatelabel;
@property (weak, nonatomic) IBOutlet UILabel *goodDateLabel;

- (void)configCellWithModel:(DDHomeModel *)model;
@end
