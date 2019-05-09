//
//  ViewControllerProtocol.h
//  Footprint
//
//  Created by chao on 2018/8/1.
//  Copyright © 2018年 chao. All rights reserved.
//

#import <Foundation/Foundation.h>

// 设置初始化
@protocol BaseController
@optional
- (void)setupData;
- (void)setupView;
@end

// 侧滑返回
@protocol GestureRecognizerNavBack
@optional
- (void)navigationGestureRecognizerBack;
@end


// 控制器跳转
@protocol TransitionController
@optional
/**
 *  从 A 控制器跳转到 B 控制器
 *
 *  @param nameVC B 控制器名称
 *  @param param  可选参数
 */
- (void)viewControllerPushOther:(NSString *)nameVC withParam:(nullable id)param;
- (void)viewControllerPresentOther:(NSString *)nameVC withParam:(nullable id)param;
@end

