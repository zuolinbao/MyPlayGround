//
//  ViewController.m
//  MyPlayGround
//
//  Created by grey on 15/10/15.
//  Copyright © 2015年 grey. All rights reserved.
//

#import "ViewController.h"
#import "TNTitleButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"TestJSONData.json" ofType:nil]] options:NSJSONReadingMutableLeaves error:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
