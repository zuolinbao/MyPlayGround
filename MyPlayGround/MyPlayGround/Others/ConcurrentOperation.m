//
//  ConcurrentOperation.m
//  MyPlayGround
//
//  Created by grey on 15/11/12.
//  Copyright © 2015年 grey. All rights reserved.
//

#import "ConcurrentOperation.h"
//状态枚举
typedef NS_ENUM(NSInteger, ConcurrentOperationState) {
    ConcurrentOperationReadyState = 1,
    ConcurrentOperationExecutingState,
    ConcurrentOperationFinishedState
};

@interface ConcurrentOperation ()
@property (nonatomic, assign) ConcurrentOperationState state;
@end

@implementation ConcurrentOperation

- (BOOL)isReady {
    self.state = ConcurrentOperationReadyState;
    return self.state == ConcurrentOperationReadyState;
}
- (BOOL)isExecuting{
    return self.state == ConcurrentOperationExecutingState;
}
- (BOOL)isFinished{
    return self.state == ConcurrentOperationFinishedState;
}

- (void)start {
    __weak typeof(self) weakSelf = self;
    dispatch_time_t time=dispatch_time(DISPATCH_TIME_NOW, 3*NSEC_PER_SEC);
    dispatch_after(time, dispatch_get_main_queue(), ^{
        
        //kvo：结束
        [weakSelf willChangeValueForKey:@"isFinished"];
        weakSelf.state = ConcurrentOperationFinishedState;
        [weakSelf didChangeValueForKey:@"isFinished"];
        
        NSLog(@"finished :%@",weakSelf);
    });
    NSLog(@"start called");
    
    //kvo：正在执行
    //[weakSelf willChangeValueForKey:@"isExecuting"];
    weakSelf.state = ConcurrentOperationExecutingState;
    //[weakSelf didChangeValueForKey:@"isExecuting"];
}

-(void)dealloc{
    NSLog(@"dealloc called");
}
@end
