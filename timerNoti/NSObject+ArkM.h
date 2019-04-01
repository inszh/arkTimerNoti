//
//  NSObject+ArkM.h
//  arkTimerNoti
//
//  Created by 小华 on 2019/4/1.
//  Copyright © 2019年 小华. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (ArkM)

/**
 目标模型做 修改数据操作
 countDown 目标模型必须实现countDown 倒计时 方法 
 */
- (void)countDown;

@end

NS_ASSUME_NONNULL_END
