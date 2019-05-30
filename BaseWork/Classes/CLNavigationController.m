//
//  CLNavigationController.m
//  CLShareLib
//
//  Created by chao on 2018/9/12.
//  Copyright © 2018年 excsir. All rights reserved.
//

#import "CLNavigationController.h"


@interface CLNavigationController ()
<
UIGestureRecognizerDelegate,
UINavigationControllerDelegate
>

/** 当前控制器 */
@property (nonatomic, weak) UIViewController *activeVController;
@end

@implementation CLNavigationController

+ (void)initialize
{
    // 1.设置导航栏颜色
    UINavigationBar *navBar = [UINavigationBar appearance];
    navBar.barTintColor = UIColor.whiteColor;
    navBar.translucent = NO;
    //    navBar.barStyle = UIBarStyleBlack;
    
    /* 隐藏 uinavigationbar 背景和底部线
     * 只有设置背景为透明 navigationBar.translucent 才有效
     */
    [[UINavigationBar appearance] setShadowImage:UIImage.new];
    [[UINavigationBar appearance] setBackgroundImage:UIImage.new
                                      forBarPosition:UIBarPositionAny
                                          barMetrics:UIBarMetricsDefault];
    
    // 2.设置 title 颜色
    NSMutableDictionary *titleAttrs = NSMutableDictionary.dictionary;
    titleAttrs[NSForegroundColorAttributeName] = UIColor.blackColor;
    if (@available(iOS 8.2, *)) {
        titleAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:16 weight:UIFontWeightRegular];
    } else {
        // Fallback on earlier versions
    }
    navBar.titleTextAttributes = titleAttrs;
    
    // 3.设置 BarButtonItem 颜色
    NSMutableDictionary *itemAttrs = NSMutableDictionary.dictionary;
    itemAttrs[NSForegroundColorAttributeName] = UIColor.blackColor;
    if (@available(iOS 8.2, *)) {
        itemAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:15 weight:UIFontWeightRegular];
    } else {
        // Fallback on earlier versions
    }
    UIBarButtonItem *barBtn = [UIBarButtonItem appearance];
    [barBtn setTitleTextAttributes:itemAttrs forState:UIControlStateNormal];
}

- (id)initWithRootViewController:(UIViewController *)rootViewController
{
    if (self = [super initWithRootViewController:rootViewController]) {
        self.interactivePopGestureRecognizer.delegate = self;
        self.delegate = self;
    }
    return self;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:YES];
}

- (void)navigationController:(UINavigationController *)navigationController
       didShowViewController:(UIViewController *)viewController
                    animated:(BOOL)animated
{
    if (navigationController.viewControllers.count == 1) {
        self.activeVController = nil;
    }else {
        self.activeVController = viewController;
    }
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    BOOL isBegin = YES;
    if (gestureRecognizer == self.interactivePopGestureRecognizer &&
        (self.activeVController != self.topViewController)) {
        return NO;
    }
    return isBegin;
}


// 隐藏 NavigationBar
- (void)navigationController:(UINavigationController *)navigationController
      willShowViewController:(UIViewController *)viewController
                    animated:(BOOL)animated
{
    if ([viewController isMemberOfClass:NSClassFromString(@"ProfileViewController")])
    {
        [navigationController setNavigationBarHidden:YES animated:animated];
    }
    else
    {
        [navigationController setNavigationBarHidden:NO animated:animated];
    }
}
@end
