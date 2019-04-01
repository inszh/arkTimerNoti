//
//  ArkTimerNoti.m
//  arkTimerNoti
//
//  Created by 小华 on 2018/11/29.
//  Copyright © 2018年 小华. All rights reserved.
//
#define ARKNOTIFICATION  @"ArkNotification"

#import "ArkTimerNoti.h"

@interface ArkTimerNoti ()
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, copy) NSArray *datas;
@end

@implementation ArkTimerNoti

- (void)createTimer:(NSArray *)datas
{
    self.datas=datas;
    
    self.timer = [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(timerEvent) userInfo:nil repeats:YES];
    
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
    
}

/**
 目标模型做 修改数据操作
 countDown 目标模型必须实现countDown 方法
 */
- (void)timerEvent
{
    [self.datas enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj performSelector:@selector(countDown)];
    }];
     
    [[NSNotificationCenter defaultCenter] postNotificationName:ARKNOTIFICATION object:nil];
}

/**
 目标控件做刷新UI操作
 
 @param target 目标控件 必须要实现notificationCenterEvent: 方法
 */
+ (void)registerTimerNotificationCenter:(id)target
{
    [[NSNotificationCenter defaultCenter] addObserver:target
                                             selector:@selector(notificationCenterEvent:)
                                                 name:ARKNOTIFICATION
                                               object:nil];
}

@end
