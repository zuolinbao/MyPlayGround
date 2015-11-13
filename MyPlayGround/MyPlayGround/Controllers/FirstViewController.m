//
//  FirstViewController.m
//  MyPlayGround
//
//  Created by grey on 15/11/12.
//  Copyright © 2015年 grey. All rights reserved.
//

#import "FirstViewController.h"
#import "ConcurrentOperation.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    ConcurrentOperation *operation = [ConcurrentOperation new];
    [queue addOperation:operation];
   // [operation start];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
