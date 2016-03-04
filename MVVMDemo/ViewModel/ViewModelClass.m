//
//  ViewModelClass.m
//  MVVMDemo
//
//  Created by taitanxiami on 16/3/4.
//  Copyright © 2016年 taitanxiami. All rights reserved.
//

#import "ViewModelClass.h"

@implementation ViewModelClass

// 传入交互的Block块
-(void) setBlockWithReturnBlock: (ReturnValueBlock) returnBlock
                 WithErrorBlock: (ErrorCodeBlock) errorBlock
               WithFailureBlock: (FailureBlock) failureBlock {
    
    _returnBlock =  returnBlock;
    _errorBlock = errorBlock;
    _failureBlock = failureBlock;
}
@end
