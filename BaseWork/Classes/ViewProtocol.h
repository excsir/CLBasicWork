//
//  ViewProtocol.h
//  Footprint
//
//  Created by chao on 2018/7/30.
//  Copyright © 2018年 chao. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ViewProtocol <NSObject>
/** <#注释#> */
@property (nonatomic, strong) NSArray * _Nullable listData;
@optional
/**
 *  给对应 View 传数据
 */
- (void)configurateViewWithData:(nullable id)object;
- (void)configurateViewWithData:(nullable id)object other:(nullable NSDictionary *)other;
- (void)configurateViewWithData:(nullable id)object atIndexPath:(nullable NSIndexPath *)indexPath;
@end
