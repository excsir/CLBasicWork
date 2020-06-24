//
//  LCViewController.h
//  CLShareLib
//
//  Created by chao on 2018/9/12.
//  Copyright © 2018年 excsir. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "ViewControllerProtocol.h"
//#import "UIViewController+Guide.h"
//#import "UIViewController+BarButtonItem.h"
//#import "UIViewController+Param.h"

NS_ASSUME_NONNULL_BEGIN
// 设置初始化
@protocol AbstractController
@optional
- (void)setupData;
- (void)setupViews;
- (void)setupNetwork;
@end

@interface LCViewController : UIViewController<AbstractController>
/** 直传参数 */
@property (nonatomic, strong) NSDictionary *param;

/** 入栈 */
- (void)pushOtherController:(NSString *)name withParam:(nullable NSDictionary*)param;

/** 模态 */
- (void)presentOtherController:(NSString *)name withParam:(nullable NSDictionary*)param;
@end

NS_ASSUME_NONNULL_END
