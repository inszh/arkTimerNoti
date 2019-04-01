//
//  ViewController.m
//  arkTimerNoti
//
//  Created by 小华 on 2018/11/29.
//  Copyright © 2018年 小华. All rights reserved.
//

#import "ViewController.h"
#import "ArkTableViewCell.h"
#import "arkM.h"
#import "ArkTimerNotiHeader.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;
@property (nonatomic, copy)NSMutableArray *datas;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setupView];
}

-(void)setupView
{
    UITableView *tableView=[UITableView new];
    tableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    tableView.frame=self.view.bounds;
    self.tableView=tableView;
    [self.view addSubview:tableView];
    tableView.delegate=self;
    tableView.dataSource=self;
    
    NSArray *temps = @[@{@"title": @"剩余时间",
                     @"time": @"12345"},
                   @{@"title": @"剩余时间",
                     @"time": @"43252345"},
                   @{@"title": @"剩余时间",
                     @"time": @"1113"},
                   @{@"title": @"剩余时间",
                     @"time": @"3245"},
                   @{@"title": @"剩余时间",
                     @"time": @"5786"},
                   @{@"title": @"剩余时间",
                     @"time": @"19"}
                       ];
    
    [temps enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        arkM *model=[arkM arkWithDict:obj];
        [self.datas addObject:model];
    }];
    
    //给数据源添加计时器 实现countDown方法
    [[ArkTimerNoti new] createTimer:self.datas];

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ArkTableViewCell *cell=[ArkTableViewCell cellWithTableView:tableView];
    //对cell做绑定操作 实现方法在view中实现notificationCenterEvent方法赋值
    [ArkTimerNoti registerTimerNotificationCenter:cell];
    cell.model=self.datas[indexPath.row];
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.datas.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

- (NSMutableArray *)datas
{
    if (!_datas) {
        _datas=[NSMutableArray array];
    }
    return _datas;
}


@end
