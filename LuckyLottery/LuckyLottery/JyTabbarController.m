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
#import "JyMyNavigationController.h"
@interface JyTabbarController ()<JyMyTabbarDelegate>

@end

@implementation JyTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    JyMyTabbar *myTabbar = [[JyMyTabbar alloc]init];
    myTabbar.frame = self.tabBar.bounds;
    myTabbar.delegate = self;
    
    for (int i = 0; i<self.viewControllers.count; i++) {
        
        NSString *imageName = [NSString stringWithFormat:@"TabBar%d",i+1];
        NSString *selectedImageName = [NSString stringWithFormat:@"TabBar%dSel",i+1];
    
        [myTabbar addTabbarButtonWithImageName:imageName selectedImageName:selectedImageName];
        
    }

    [self.tabBar addSubview:myTabbar];
    
    

    
    
    // Do any additional setup after loading the view.
}



- (void)myTabbar:(JyMyTabbar *)tabbar didSelectedButtonFrom:(int)from to:(int)to{
    NSLog(@"%d --------- %d",from,to);
    
    self.selectedIndex = to;
}


@end
