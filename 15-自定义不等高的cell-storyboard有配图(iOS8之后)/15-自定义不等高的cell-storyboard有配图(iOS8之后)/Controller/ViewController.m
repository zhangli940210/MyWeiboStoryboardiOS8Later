//
//  ViewController.m
//  15-自定义不等高的cell-storyboard有配图(iOS8之后)
//
//  Created by apple on 16/2/23.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "ViewController.h"
#import "XMGStatus.h"
#import "XMGStatusCell.h"
#import "MJExtension.h"

@interface ViewController ()

/** 微博数组*/
@property (nonatomic, strong) NSArray *statuses;

@end

@implementation ViewController

#pragma mark - 懒加载数据
- (NSArray *)statuses
{
    if (_statuses == nil) {
        _statuses = [XMGStatus mj_objectArrayWithFilename:@"statuses.plist"];
    }
    return _statuses;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // iOS8之后才拥有的技术
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 200;
    
}

#pragma mark - 数据源方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.statuses.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 去缓存池里面找，如果没有找到，去storyboard里面找
    static NSString *ID = @"status";
    XMGStatusCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    // 传递模型数据
    cell.status = self.statuses[indexPath.row];
    return cell;
}


@end
