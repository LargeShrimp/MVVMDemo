//
//  HomeViewModelClass.h
//  MVVMDemo
//
//  Created by taitanxiami on 16/3/4.
//  Copyright © 2016年 taitanxiami. All rights reserved.
//

#import "ViewModelClass.h"
@class DDHomeModel;

@interface HomeViewModelClass : ViewModelClass

- (void)fetchHomeData;

- (void)push2DetailWithModel:(DDHomeModel *)model WithViewController:(UIViewController *)ctl;

@end
