//
//  JyTabbarController.m
//  LuckyLottery
//
//  Created by MS on 16/9/24.
//  Copyright © 2016年 JY. All rights reserved.
//

#import "JyTabbarController.h"
#import "JyMyTabbar.h"
#import "JyTabbarBtn.h"
@interface JyTabbarController ()<JyMyTabbarDelegate>

@end

@implementation JyTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //移除系统自带的tabbar
    [self.tabBar removeFromSuperview];
    
    JyMyTabbar *myTabbar = [[JyMyTabbar alloc]init];
    myTabbar.frame = self.tabBar.frame;
    myTabbar.delegate = self;
    [self.view addSubview:myTabbar];
    
    
    // Do any additional setup after loading the view.
}

- (void)myTabbar:(JyMyTabbar *)tabbar didSelectedButtonFrom:(int)from to:(int)to{
    NSLog(@"%d --------- %d",from,to);
    
    self.selectedIndex = to;
}


@end
