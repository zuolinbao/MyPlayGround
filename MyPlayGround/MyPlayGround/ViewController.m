//
//  ViewController.m
//  MyPlayGround
//
//  Created by grey on 15/10/15.
//  Copyright © 2015年 grey. All rights reserved.
//

#import "ViewController.h"
#import "LBOneViewController.h"
#import "LBTwoViewController.h"



static NSInteger kWidth = 10;
@interface ViewController ()
@property (nonatomic,strong)UIViewController *showingVC;
@property (nonatomic,strong)UILabel *label;
@property (nonatomic,strong)UIScrollView *scrollView;
@property (nonatomic,strong)UIView *containerView;
@end

@implementation ViewController
- (IBAction)update:(id)sender {

    kWidth -=10;
    [self.label mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@(kWidth));
    }];
   
    NSLog(@"%@",NSStringFromCGRect(self.label.frame));
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"TestJSONData.json" ofType:nil]] options:NSJSONReadingMutableLeaves error:nil];
    
    self.scrollView = [UIScrollView new];
    self.scrollView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.scrollView];
    [self.scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
       make.edges.equalTo(self.view).insets(UIEdgeInsetsMake(100, 10, 10, 10));
    }];
    
    _containerView = [UIView new];
    _containerView.backgroundColor = [UIColor purpleColor];
    [self.scrollView addSubview:_containerView];
    [_containerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.scrollView).insets(UIEdgeInsetsMake(10, 10, 10, 10));
        make.width.equalTo(self.scrollView).offset(-20);
    }];
    
    
     _label = [UILabel new];
    [self.containerView addSubview:_label];
    _label.text =@"dhfjkshdjfhsjdfhkjshdf";
    _label.numberOfLines = 0;
    [_label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(_containerView).offset(10);
        make.top.equalTo(_containerView);
        //make.edges.equalTo(self.scrollView).insets(UIEdgeInsetsMake(10, 10, 10, 10));
        make.width.equalTo(@80);
    }];
    
    
    UIView *redView = [UIView new];
    redView.backgroundColor = [UIColor redColor];
    [self.containerView addSubview:redView];
//    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.size.mas_equalTo(CGSizeMake(50, 50));
//        make.top.equalTo(self.label).offset(800);
//        make.left.equalTo(self.label).offset(50);
//        make.bottom.equalTo(self.containerView);
//    }];
    [redView.leftAnchor constraintEqualToAnchor:_label.leftAnchor constant:10];
    [redView.topAnchor constraintEqualToAnchor:_label.bottomAnchor constant:20];
    [redView.widthAnchor constraintEqualToConstant:100];
    [redView.heightAnchor constraintEqualToConstant:100];
    

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    kWidth +=10;
        [self.label mas_updateConstraints:^(MASConstraintMaker *make) {
            make.width.equalTo(@(kWidth));
        }];
    [UIView animateWithDuration:4 animations:^{
        //[self.view layoutIfNeeded];
        //[self.containerView updateConstraints];
        [self.containerView setNeedsLayout];
    }];
   //NSLog(@"%@",NSStringFromCGRect(self.label.frame));
}



@end
