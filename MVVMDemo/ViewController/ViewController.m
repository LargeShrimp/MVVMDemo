//
//  ViewController.m
//  MVVMDemo
//
//  Created by taitanxiami on 16/3/4.
//  Copyright © 2016年 taitanxiami. All rights reserved.
//

#import "ViewController.h"
#import "TTXMHomeCell.h"
#import "HomeViewModelClass.h"
#import "DDHomeModel.h"


static NSString *const CELLIDENTIFY = @"cell";

@interface ViewController ()
<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) NSArray *arr;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self fetchData];
}

- (void) fetchData {
    
    HomeViewModelClass *requestData = [[HomeViewModelClass alloc]init];
    
    [requestData setBlockWithReturnBlock:^(id returnValue) {
        _arr = returnValue;
        
        [_tableView reloadData];
    } WithErrorBlock:^(id errorCode) {
        
    } WithFailureBlock:^{
        
    }];
    
    [requestData fetchHomeData];
    
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {    
    return _arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TTXMHomeCell *cell = [tableView dequeueReusableCellWithIdentifier:CELLIDENTIFY];
    DDHomeModel *model = _arr[indexPath.row];
    [cell configCellWithModel:model];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
