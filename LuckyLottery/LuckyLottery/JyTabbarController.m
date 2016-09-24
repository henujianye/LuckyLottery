//
//  JyTabbarController.m
//  LuckyLottery
//
//  Created by MS on 16/9/24.
//  Copyright © 2016年 JY. All rights reserved.
//

#import "JyTabbarController.h"

@interface JyTabbarController ()

@end

@implementation JyTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //移除系统自带的tabbar
    [self.tabBar removeFromSuperview];
    
    //添加自定义的tabbar
    UIView *tabbarView = [[UIView alloc]initWithFrame:self.tabBar.frame];
    tabbarView.backgroundColor = [UIColor greenColor];
    
    
    //给tabbarView添加按钮
    for (int i=0; i<5; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        //btn的frame
        CGFloat btnY = 0;
        CGFloat btnW = self.tabBar.bounds.size.width * 0.2;
        CGFloat btnH = self.tabBar.bounds.size.height ;
        CGFloat btnX = btnW *i;
        
        btn.frame = CGRectMake(btnX, btnY, btnW, btnH);
        
        
        //设置btn的图片
        NSString *imageNormal = [NSString stringWithFormat:@"TabBar%d",i + 1];
        [btn setBackgroundImage:[UIImage imageNamed:imageNormal] forState:UIControlStateNormal];
        NSString *imageSelected = [NSString stringWithFormat:@"TabBar%dSel",i + 1];
        [btn setBackgroundImage:[UIImage imageNamed:imageSelected] forState:UIControlStateSelected];
        
        
        //给btn添加点击事件
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [tabbarView addSubview:btn];
        
        
    }
    
    
    
    
    
    
    
    [self.view addSubview:tabbarView];
    
    
    
    
    
    
    
    
    
    // Do any additional setup after loading the view.
}

- (void)btnClick:(UIButton *)btn{
    NSLog(@"点击了~~~~~");
}


@end
