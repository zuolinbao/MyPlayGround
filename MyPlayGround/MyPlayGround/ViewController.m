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

@interface ViewController ()
@property (nonatomic,strong)UIViewController *showingVC;
@property (weak, nonatomic) IBOutlet UIView *containerView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"TestJSONData.json" ofType:nil]] options:NSJSONReadingMutableLeaves error:nil];
    LBOneViewController *oneVC =[[LBOneViewController alloc] init];
    LBTwoViewController *towVC = [[LBTwoViewController alloc] init];
    [self addChildViewController:oneVC];
    [self addChildViewController:towVC];

    

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [_showingVC.view removeFromSuperview];
//    if ([_showingVC isKindOfClass:[LBOneViewController class]]) {
//        _showingVC = self.childViewControllers[1];
//       
//    }else{
//        _showingVC = self.childViewControllers[0];
//    }
//    [_containerView addSubview:_showingVC.view];
    //[self.view1 removeFromSuperview];

    UIView *twoView = [[UIView alloc] initWithFrame:self.view.bounds];
    twoView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:twoView];
    CATransition *transition = [CATransition animation];
    transition.duration = 0.25;
    transition.type = @"cube";
    transition.subtype = kCATransitionPush;
    [self.view.layer addAnimation:transition forKey:nil];
    
    
    
}

-(void)transitionFromViewController:(UIViewController *)fromViewController toViewController:(UIViewController *)toViewController duration:(NSTimeInterval)duration options:(UIViewAnimationOptions)options animations:(void (^)(void))animations completion:(void (^)(BOOL))completion{


}

@end
