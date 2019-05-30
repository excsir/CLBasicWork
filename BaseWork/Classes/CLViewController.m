//
//  CLViewController.m
//  CLShareLib
//
//  Created by chao on 2018/9/12.
//  Copyright © 2018年 excsir. All rights reserved.
//

#import "CLViewController.h"


@interface CLViewController ()

@end

@implementation CLViewController
#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    [self p_hideTopViewControllerLeftBarButtonItem];
    [self setupData];
    [self setupView];
}


#pragma mark - <#system delegate#>


#pragma mark - custom delegate


#pragma mark - notification


#pragma mark - event response


#pragma mark - public method


#pragma mark - private method
- (void)p_hideTopViewControllerLeftBarButtonItem
{// 栈为 1 的时候不显示 item
    if (!self.navigationController) return;
    
    if (1 == self.navigationController.viewControllers.count) {
        self.navigationItem.leftBarButtonItem = nil;
    } else {
//        [self navLeftButtonItemIcon:@"nav_back_black" highIcon:@"nav_back_black"];
    }
}


#pragma mark - ControllerProtocol
- (void)setupData {}
- (void)setupView {}


- (void)onGestureRecognizerPop {}


#pragma mark - UIViewController_Ex
- (void)pushOtherViewController:(nonnull NSString *)name param:(nullable id)param
{
    UIViewController *vc = [[NSClassFromString(name) alloc] init];
    vc.param = param;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)presentOtherViewController:(nonnull NSString *)name param:(nullable id)param
{
    UIViewController *vc = [[NSClassFromString(name) alloc] init];
    UINavigationController *nav = [[NSClassFromString(@"CLNavigationController") alloc] initWithRootViewController:vc];
    
    if (!nav) return;
    
    vc.param = param;
    [self presentViewController:nav animated:YES completion:nil];
}

#pragma mark - getter and setter

@end
