//
//  arkM.m
//  arkTimerNoti
//
//  Created by 小华 on 2018/11/29.
//  Copyright © 2018年 小华. All rights reserved.
//

#import "arkM.h"

@implementation arkM


+ (instancetype)arkWithDict:(NSDictionary *)dict
{
    arkM *model = [[self alloc] init];
    
    [model setValuesForKeysWithDictionary:dict];
    
    return model;
    
}


- (void)countDown
{
    int tempTime= self.time.intValue;
    tempTime-=1;
    self.time=[NSString stringWithFormat:@"%d",tempTime];
    
}


@end
