//
//  MTViewController.m
//  MTSetting
//
//  Created by 287178790@qq.com on 03/21/2017.
//  Copyright (c) 2017 287178790@qq.com. All rights reserved.
//

#import "MTViewController.h"
#import "DemoViewController.h"

@interface MTViewController ()

@end

@implementation MTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn addTarget:self action:@selector(clickHandler) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"PUSH" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
}

- (void)clickHandler {
    DemoViewController *vc = [[DemoViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    vc.title = @"Setting Demo";
    [self presentViewController:nav animated:YES completion:nil];
}

@end
