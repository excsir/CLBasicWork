//
//  ViewControllerProtocol.h
//  CLShareLib
//
//  Created by chao on 2018/8/1.
//  Copyright © 2018年 chao. All rights reserved.
//

#import <Foundation/Foundation.h>

// 设置初始化
@protocol ControllerProtocol
- (void)setupData;
- (void)setupView;

// 侧滑返回
@optional
- (void)onGestureRecognizerPop;

/**
 *  从 A 控制器跳转到 B 控制器
 *
 *  @param name B 控制器名称
 *  @param param  可选参数
 */
- (void)pushOtherViewController:(nonnull NSString *)name param:(nullable id)param;
- (void)presentOtherViewController:(nonnull NSString *)name param:(nullable id)param;
@end


