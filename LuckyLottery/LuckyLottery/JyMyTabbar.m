//
//  JyMyTabbar.m
//  LuckyLottery
//
//  Created by MS on 16/9/24.
//  Copyright © 2016年 JY. All rights reserved.
//

#import "JyMyTabbar.h"
#import "JyTabbarBtn.h"
#define  TabbarBtnCount 5
@interface JyMyTabbar ()
@property (nonatomic, weak) UIButton *selectedBtn;

@end

@implementation JyMyTabbar


- (void)addTabbarButtonWithImageName:(NSString *)image selectedImageName:(NSString *)selectedImage{
    //给tabbarView添加按钮
        JyTabbarBtn *btn = [JyTabbarBtn buttonWithType:UIButtonTypeCustom];
    
    btn.adjustsImageWhenHighlighted = NO;
    
    btn.tag = self.subviews.count;
        
        
        //设置btn的图片
    [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:selectedImage] forState:UIControlStateSelected];
        
        
        //给btn添加点击事件
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
        
        [self addSubview:btn];
        
        //初始的按钮为第0个
        if (self.subviews.count == 1) {
            [self btnClick:btn];
        }
        
    

    
}

//添加子空间放在这里
- (void)layoutSubviews{
    [super layoutSubviews];
    for (int i=0; i<TabbarBtnCount; i++) {
        JyTabbarBtn *tabbarBtn = self.subviews[i];
        //btn的frame
        CGFloat btnY = 0;
        CGFloat btnW = self.bounds.size.width / TabbarBtnCount;
        CGFloat btnH = self.bounds.size.height ;
        CGFloat btnX = btnW *i;
        
        tabbarBtn.frame = CGRectMake(btnX, btnY, btnW, btnH);
        
    }
    
}
- (void)btnClick:(JyTabbarBtn *)btn{
    
    //实现delegate的方法
    // self.selectedIndex = btn.tag;
    if ([self.delegate respondsToSelector:@selector(myTabbar:didSelectedButtonFrom:to:)]) {
        [self.delegate myTabbar:self didSelectedButtonFrom:self.selectedBtn.tag to:btn.tag];
    };
    
    
    //选中的按钮的选中状态为NO
    self.selectedBtn.selected = NO;
    //当前的按钮的选中状态是yes
    btn.selected = YES;
    //当前的选中的按钮赋值
    self.selectedBtn = btn;
    

    
    
    
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
