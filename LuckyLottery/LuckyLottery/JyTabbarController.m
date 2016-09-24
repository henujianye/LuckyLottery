//
//  JyTabbarController.m
//  LuckyLottery
//
//  Created by MS on 16/9/24.
//  Copyright © 2016年 JY. All rights reserved.
//

#import "JyTabbarController.h"
#import "JyTabbarBtn.h"
@interface JyTabbarController ()
@property (nonatomic, weak) UIButton *selectedBtn;

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
        JyTabbarBtn *btn = [JyTabbarBtn buttonWithType:UIButtonTypeCustom];
        
        btn.tag = i;
        
        //btn的frame
        CGFloat btnY = 0;
        CGFloat btnW = self.tabBar.bounds.size.width * 0.2;
        CGFloat btnH = self.tabBar.bounds.size.height ;
        CGFloat btnX = btnW *i;
        
        btn.frame = CGRectMake(btnX, btnY, btnW, btnH);
        
        btn.adjustsImageWhenHighlighted = NO;
        
        
        //设置btn的图片
        NSString *imageNormal = [NSString stringWithFormat:@"TabBar%d",i + 1];
        [btn setBackgroundImage:[UIImage imageNamed:imageNormal] forState:UIControlStateNormal];
        NSString *imageSelected = [NSString stringWithFormat:@"TabBar%dSel",i + 1];
        [btn setBackgroundImage:[UIImage imageNamed:imageSelected] forState:UIControlStateSelected];
        
        
        //给btn添加点击事件
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
        
        [tabbarView addSubview:btn];
        
        //初始的按钮为第0个
        if (i == 0) {
            [self btnClick:btn];
        }
        
        
    }
    
    
    
    
    
    
    
    [self.view addSubview:tabbarView];
    
    
    
    
    
    
    
    
    
    // Do any additional setup after loading the view.
}

- (void)btnClick:(UIButton *)btn{
    NSLog(@"点击了~~~~~");
    //选中的按钮的选中状态为NO
    self.selectedBtn.selected = NO;
    //当前的按钮的选中状态是yes
    btn.selected = YES;
    //当前的选中的按钮赋值
    self.selectedBtn = btn;
    
    
    self.selectedIndex = btn.tag;
    
    
    
    
    
    
}


@end
