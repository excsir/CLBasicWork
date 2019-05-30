//
//  UIViewController+Param.m
//  CLShareLib
//
//  Created by liuchao on 2017/6/26.
//  Copyright © 2017年 chao.liu. All rights reserved.
//

#import "UIViewController+Param.h"

@implementation UIViewController (Param)
@dynamic param;

- (void)setParam:(nullable id)param
{
    objc_setAssociatedObject(self, @selector(param), param, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id)param
{
    return objc_getAssociatedObject(self, @selector(param));
}
@end
