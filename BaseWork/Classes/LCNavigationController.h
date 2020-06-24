//
//  LCNavigationController.h
//  CLShareLib
//
//  Created by chao on 2018/9/12.
//  Copyright © 2018年 excsir. All rights reserved.
//

#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN


@interface LCNavigationController : UINavigationController
/** 需要隐藏导航栏的控制器的名称 */
@property (nonatomic, strong) NSArray<__kindof NSString *> *vcNames;
@end

NS_ASSUME_NONNULL_END
