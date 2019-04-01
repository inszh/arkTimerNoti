//
//  ArkTableViewCell.m
//  arkTimerNoti
//
//  Created by 小华 on 2018/11/29.
//  Copyright © 2018年 小华. All rights reserved.
//

#import "ArkTableViewCell.h"
#import "arkM.h"
#import "ArkTimerNotiHeader.h"

@interface ArkTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *title;

@property (weak, nonatomic) IBOutlet UILabel *time;

@end

@implementation ArkTableViewCell


+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString * ID =@"cellID";
    
    ArkTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell==nil) {
        
        NSString *name=NSStringFromClass(self);
        
        cell=[[[NSBundle  mainBundle]loadNibNamed:name owner:self options:nil]  lastObject];
    }
    
    return cell;
}

-(void)setModel:(arkM *)model
{
    _model=model;
    
    self.title.text=model.title;
    
    self.time.text=model.time;
}


- (void)notificationCenterEvent:(NSNotification *)noti
{
    self.time.text=self.model.time;
}



@end
