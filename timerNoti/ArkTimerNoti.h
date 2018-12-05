//
//  ArkTimerNoti.h
//  arkTimerNoti
//
//  Created by 小华 on 2018/11/29.
//  Copyright © 2018年 小华. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ArkTimerNoti : NSObject


/**
 创建时间工具

 @param datas 数据模型数组
 */
- (void)createTimer:(NSArray *)datas;

/**
 目标控件做刷新UI操作
 
 @param target 目标控件 必须要实现notificationCenterEvent: 方法
 */
+ (void)registerTimerNotificationCenter:(id)target;

@end

NS_ASSUME_NONNULL_END
