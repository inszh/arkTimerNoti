//
//  arkM.h
//  arkTimerNoti
//
//  Created by 小华 on 2018/11/29.
//  Copyright © 2018年 小华. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface arkM : NSObject

@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *time;

+ (instancetype)arkWithDict:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END
