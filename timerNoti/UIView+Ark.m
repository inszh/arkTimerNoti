//
//  UIView+Ark.m
//  arkTimerNoti
//
//  Created by 小华 on 2019/4/1.
//  Copyright © 2019年 小华. All rights reserved.
//

#import "UIView+Ark.h"

@implementation UIView (Ark)

- (void)notificationCenterEvent:(NSNotification *)noti
{
    @throw [NSException exceptionWithName:@"error" reason:@"\n哥你没实现方法!\n请在目标控件实现notificationCenterEvent:方法" userInfo:nil];
}

@end
