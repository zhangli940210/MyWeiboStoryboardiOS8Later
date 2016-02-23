//
//  XMGStatusCell.m
//  15-自定义不等高的cell-storyboard有配图(iOS8之后)
//
//  Created by apple on 16/2/23.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import "XMGStatusCell.h"
#import "XMGStatus.h"

@interface XMGStatusCell ()

/** 图像*/
@property (nonatomic ,weak)  IBOutlet UIImageView *iconImageView;

/** 昵称*/
@property (nonatomic ,weak) IBOutlet UILabel *nameLabel;

/** vip*/
@property (nonatomic ,weak) IBOutlet UIImageView *vipImageView;

/** 正文*/
@property (nonatomic ,weak) IBOutlet UILabel *text_Label;

/** 配图*/
@property (nonatomic ,weak)  IBOutlet UIImageView *pictureImageView;

/** 配图的高度约束*/
@property (weak, nonatomic)  IBOutlet NSLayoutConstraint *pictureHLc;

@property (weak, nonatomic)  IBOutlet NSLayoutConstraint *pictureBottomLc;

@end

@implementation XMGStatusCell

- (void)setStatus:(XMGStatus *)status
{
    _status = status;
    // 给头像设置图片
    self.iconImageView.image = [UIImage imageNamed:status.icon];
    // 给昵称赋值
    self.nameLabel.text = status.name;
    // 判断是否是会员
    if (status.isVip) { // 是VIP
        self.vipImageView.hidden = NO;
        self.nameLabel.textColor = [UIColor orangeColor];
    } else {
        self.vipImageView.hidden = YES;
        self.nameLabel.textColor = [UIColor blackColor];
    }
    // 给正文赋值
    self.text_Label.text = status.text;
    // 判断是否有配图
    if (status.picture) { // 有配图
        self.pictureHLc.constant = 100;
        self.pictureBottomLc.constant = 10;
        self.pictureImageView.image = [UIImage imageNamed:status.picture];
    } else {
        self.pictureHLc.constant = 0;
        self.pictureBottomLc.constant = 0;
    }
}

@end
