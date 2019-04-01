//
//  UIView+Ark.h
//  arkTimerNoti
//
//  Created by 小华 on 2019/4/1.
//  Copyright © 2019年 小华. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Ark)

/**
 目标控件做刷新UI操作
 
 @param target 目标控件 必须要实现notificationCenterEvent: 方法
 */
- (void)notificationCenterEvent:(NSNotification *)noti;

@end

NS_ASSUME_NONNULL_END
