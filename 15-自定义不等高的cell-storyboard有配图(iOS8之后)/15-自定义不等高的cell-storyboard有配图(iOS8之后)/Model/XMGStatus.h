//
//  XMGStatus.h
//  15-自定义不等高的cell-storyboard有配图(iOS8之后)
//
//  Created by apple on 16/2/23.
//  Copyright © 2016年 m14a.cn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XMGStatus : NSObject

/** 图像*/
@property (nonatomic ,strong) NSString *icon;

/** 昵称*/
@property (nonatomic ,strong) NSString *name;

/** 内容(正文)*/
@property (nonatomic ,strong) NSString *text;

/** vip*/
@property (nonatomic ,assign ,getter=isVip) BOOL vip;

/** 配图*/
@property (nonatomic ,strong) NSString *picture;

@end
