//
//  HomeViewModelClass.m
//  MVVMDemo
//
//  Created by taitanxiami on 16/3/4.
//  Copyright © 2016年 taitanxiami. All rights reserved.
//

#import "HomeViewModelClass.h"
#import "NetRequestClass.h"
#import "DDHomeModel.h"

@implementation HomeViewModelClass

- (void)fetchHomeData {
    
    NSString *homeUrl = @"http://api.diandainfo.com/v1/promotional/recomand/goods?limit=20&offset=0";
    [NetRequestClass NetRequestGETWithRequestURL:homeUrl WithParameter:nil WithReturnValeuBlock:^(id returnValue) {
        
        [self dealDataWithDictiona:returnValue[@"data"]];
    } WithErrorCodeBlock:^(id errorCode) {
        self.errorBlock(errorCode);
    } WithFailureBlock:^{
        
        self.failureBlock();
    }];
}


- (void)dealDataWithDictiona:(NSArray *)dic {
    
    NSArray *statuses = dic;
    NSMutableArray *publicModelArray = [[NSMutableArray alloc] initWithCapacity:statuses.count];
    
    for (int i = 0; i < statuses.count; i ++) {
        
        DDHomeModel *publicModel = [[DDHomeModel alloc] init];
        NSDictionary *model = statuses[i];
        publicModel.name    = model[@"name"];
        NSArray *imagepath  = model[@"imagePath"];
        publicModel.image   = imagepath.firstObject;
        publicModel.formate = model[@"specification"] ? : nil;
        publicModel.date = model[@"produceDate"] != [NSNull null] ? model[@"produceDate"] : @"暂无" ;
        [publicModelArray addObject:publicModel];
    }
    self.returnBlock(publicModelArray);
}

- (void)push2DetailWithModel:(DDHomeModel *)model WithViewController:(UIViewController *)ctl {
    
    UIViewController *newController = [[UIViewController alloc]init];
    newController.view.backgroundColor = [UIColor redColor];    
    [ctl.navigationController pushViewController:newController animated:YES];
    
}
@end
