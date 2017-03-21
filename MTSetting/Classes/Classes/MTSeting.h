//
//  MTSeting.h
//  MTCommonSetingTableViewController
//
//  Created by 董徐维 on 2017/3/18.
//  Copyright © 2017年 Mr.Tung. All rights reserved.
//

#define MTScreenW [UIScreen mainScreen].bounds.size.width

#define MTScreenH [UIScreen mainScreen].bounds.size.height

#define MTViewW self.view.width

#define MTViewH self.view.height
//导航栏背景色
#define MTNavgationBackgroundColor [UIColor colorWithRed:12/255.0 green:167/255.0 blue:161/255.0 alpha:1.0]

// 颜色
#define MTColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

// 全局背景色
#define MTGlobalBg MTColor(235, 235, 235)

// 表格选中背景色
#define MTSelectBg MTColor(220, 220, 220)

// cell的计算参数
// cell之间的间距
#define MTStatusCellMargin 10

#ifndef MTSeting_h
#define MTSeting_h

#import "MTCommonItem.h"
#import "MTCommonArrowItem.h"
#import "MTCommonSwitchItem.h"
#import "MTCommonLabelItem.h"
#import "MTCommonCenterItem.h"
#import "MTBadgeView.h"
#import "UIImage+Extension.h"
#import "UIView+Extension.h"
#import "MTCommonTextfieldItem.h"
#import "MTCommonButtonItem.h"
#import "MTCommonCell.h"
#import "MTCommonGroup.h"
#import "MTCommonCheckItem.h"
#import "MTCommonViewController.h"

#endif /* MTSeting_h */
