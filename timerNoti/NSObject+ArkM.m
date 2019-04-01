//
//  NSObject+ArkM.m
//  arkTimerNoti
//
//  Created by 小华 on 2019/4/1.
//  Copyright © 2019年 小华. All rights reserved.
//

#import "NSObject+ArkM.h"

@implementation NSObject (ArkM)

- (void)countDown
{
    @throw [NSException exceptionWithName:@"error" reason:@"\n哥你没实现方法!\n请在目标模型实现countDown倒计时方法" userInfo:nil];
}
@end
