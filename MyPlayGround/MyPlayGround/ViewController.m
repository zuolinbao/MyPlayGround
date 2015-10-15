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
    NSArray *titles = @[@"dsfs",@"dfgafadsfasdf",@"fdakhdfjasd"];
    for ( int i=0;i<3;i++) {
        TNTitleButton *titleButton = [TNTitleButton buttonWithTitle:titles[i] EdgeInsets:UIEdgeInsetsMake(10, 10, 10, 10)];
        UIImage *originImage = [UIImage imageNamed:@"search_category_bg"];
        [titleButton setBackgroundImage:[originImage resizableImageWithCapInsets:UIEdgeInsetsMake(0, originImage.size.width/2, 0, originImage.size.width/2) resizingMode:UIImageResizingModeStretch] forState:UIControlStateNormal];
        titleButton.x = 100;
        titleButton.y = 60*i+100;
        [self.view addSubview:titleButton];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
