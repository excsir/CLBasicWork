//
//  UIViewController+Param.h
//  CLShareLib
//
//  Created by liuchao on 2017/6/26.
//  Copyright © 2017年 chao.liu. All rights reserved.
//  控制器直传参数

#import <UIKit/UIKit.h>
#import <objc/runtime.h>


@interface UIViewController (Param)
/** 控制器传参 */
@property (nonatomic, strong, nullable) id param;
@end
