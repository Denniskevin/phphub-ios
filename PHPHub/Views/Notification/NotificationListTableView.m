//
//  NotificationListTableView.m
//  PHPHub
//
//  Created by Aufree on 9/26/15.
//  Copyright (c) 2015 ESTGroup. All rights reserved.
//

#import "NotificationListTableView.h"
#include "NotificationListCell.h"
#import "NotificationEntity.h"

@interface NotificationListTableView () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation NotificationListTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    self = [super initWithFrame:frame style:style];
    if (self) {
        self.backgroundColor = [UIColor colorWithWhite:0.933 alpha:1.000];
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
        self.dataSource = self;
        self.delegate = self;
        self.notificationEntities = [[NSMutableArray alloc] init];
        
        [self reloadData];
    }
    return self;
}

- (void)setNotificationEntities:(NSMutableArray *)notificationEntities {
    _notificationEntities = notificationEntities;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *notificationListIdentifier = @"notificationListIdentifier";
    
    NotificationListCell *cell = [tableView dequeueReusableCellWithIdentifier:notificationListIdentifier];
    
    if (!cell) {
        cell = [[NotificationListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:notificationListIdentifier];
    }
    
    if (YES) {
//        NotificationEntity *notificationEntity = self.notificationEntities[indexPath.row];
        NotificationEntity *notificationEntity = nil;
        cell.backgroundColor = self.backgroundColor;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.notificationEntity = notificationEntity;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView *footerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 10.0)];
    return footerView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    NotificationEntity *notificationEntity = self.notificationEntities[indexPath.row];
    return [NotificationListCell countHeightForCell:nil];
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 10;
}

@end
