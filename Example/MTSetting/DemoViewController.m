//
//  DemoViewController.m
//  MTCommonSetingTableViewController
//
//  Created by 董徐维 on 2017/3/18.
//  Copyright © 2017年 Mr.Tung. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupGroup];
    
    [self setupGroup0];
    
    [self setupGroup1];
}

- (void)setupGroup
{
    // 1.创建组
    MTCommonGroup *group = [MTCommonGroup group];
    [self.groups addObject:group];
    
    // 设置组的所有行数据
    MTCommonArrowItem *version = [MTCommonArrowItem itemWithTitle:@"清除缓存" icon:@"icon_0"];
    version.subtitle = [NSString stringWithFormat:@"%@M",@"dsa"];
    version.operation = ^{
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"缓存大小为%@,确定要清除吗？" preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"关闭" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }]];
        [alert addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
            
        }]];
        
        [self presentViewController:alert animated:YES completion:nil];
    };
    
    MTCommonItem *advice = [MTCommonItem itemWithTitle:@"设置" icon:@"icon_1"];
    advice.operation = ^{
    };
    
    group.items = @[advice,version];
}

- (void)setupGroup0
{
    // 1.创建组
    MTCommonGroup *group = [MTCommonGroup group];
    [self.groups addObject:group];
    
    // 设置组的所有行数据
    MTCommonArrowItem *version = [MTCommonArrowItem itemWithTitle:@"清除缓存" icon:@"nil"];
    version.subtitle = [NSString stringWithFormat:@"%@M",@"dsa"];
    version.operation = ^{
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"缓存大小为%@,确定要清除吗？" preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:[UIAlertAction actionWithTitle:@"关闭" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }]];
        [alert addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
            
        }]];
        
        [self presentViewController:alert animated:YES completion:nil];
        
    };
    
    MTCommonArrowItem *advice = [MTCommonArrowItem itemWithTitle:@"设置" icon:@"nil"];
    advice.badgeValue = @"2";
    advice.operation = ^{
    };
    
    MTCommonArrowItem *updata = [MTCommonArrowItem itemWithTitle:@"消息通知" icon:@"nil"];
    updata.destVcClass = [DemoViewController class];
    
    
    MTCommonSwitchItem *switchItem = [MTCommonSwitchItem itemWithTitle:@"消息推送" icon:@"nil"];
    switchItem.switchChangeBlock = ^(UISwitch *sw){
        NSLog(@"%d",sw.on);
    };
    
    MTCommonTextfieldItem *textItem = [MTCommonTextfieldItem itemWithTitle:@"姓名" icon:@"nil"];
    textItem.placeholder = @"请输入姓名";
    textItem.textValue = @"zhangsan";
    
    MTCommonButtonItem *btnItem = [MTCommonButtonItem itemWithTitle:@"姓名" icon:@"nil"];
    btnItem.btnTitle = @"按钮";
    btnItem.buttonClickBlock = ^(UIButton *btn){
        NSLog(@"按钮");
    };
    
    MTCommonCheckItem *selectedItem = [MTCommonCheckItem itemWithTitle:@"选中" icon:@"nil"];
    selectedItem.checkClickBlock = ^(UIButton *btn){
        NSLog(@"选中%d",btn.selected);
    };
    
    MTCommonLabelItem *labelItem = [MTCommonLabelItem itemWithTitle:@"Label" icon:@"nil"];
    labelItem.textValue = @"label";
    
    MTCommonItem *nullItem = [MTCommonItem itemWithTitle:@"" icon:@"nil"];
    
    group.items = @[updata,version,advice,switchItem,textItem,btnItem,selectedItem,labelItem,nullItem];
}

- (void)setupGroup1
{
    // 1.创建组
    MTCommonGroup *group = [MTCommonGroup group];
    [self.groups addObject:group];
    MTCommonCenterItem *center = [MTCommonCenterItem itemWithTitle:@"退出登录" icon:@"nil"];
    group.items = @[center];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"CellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];

    if (indexPath.section == 1 && indexPath.row == 8) {
        // 创建cell
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
            cell.textLabel.textColor = [UIColor redColor];
            cell.textLabel.font = [UIFont systemFontOfSize:14];
            cell.backgroundColor = [UIColor clearColor];
        }
        cell.textLabel.text = @"adasd";
    }
    else
    {
        cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
    }
    return cell;
}



@end
