//
//  MJRefreshController.m
//  KitDemo
//
//  Created by apple on 15/9/19.
//  Copyright (c) 2015年 wantong. All rights reserved.
//

#import "MJRefreshController.h"

@interface MJRefreshController ()

@end

@implementation MJRefreshController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupRefresh];
}
/**
 *  添加MJ刷新
 */
#pragma mark mjrefresh 交互事件
-(void)setupRefresh{
    //头
    [self.tableView addLegendHeaderWithRefreshingBlock:^{
        
    }];
    
    
    //尾
    [self.tableView addLegendFooterWithRefreshingBlock:^{
        
    }];
    [self.tableView.header beginRefreshing];
    
    /**
     *  测试辅助
     */
    [self performSelector:@selector(closeRefresh) withObject:nil afterDelay:2.0];
}

-(void)closeRefresh{
    [self.tableView.header endRefreshing];
    [self.tableView.footer endRefreshing];
}
@end
