//
//  JyMyNavigationController.m
//  LuckyLottery
//
//  Created by MS on 16/9/24.
//  Copyright © 2016年 JY. All rights reserved.
//

#import "JyMyNavigationController.h"

@interface JyMyNavigationController ()

@end

@implementation JyMyNavigationController
//这个方法是这个类第一次用的时候调用 只会调用一次
+ (void)initialize{
    //设置导航栏的样式
    
    UINavigationBar *navBar = [UINavigationBar appearance];
    
    NSString *image = nil;
    if (IOS7) {
        image = @"NavBar64";
    }else{
        image = @"NavBar";
    }
    [navBar setBackgroundImage:[UIImage imageNamed:image] forBarMetrics:UIBarMetricsDefault];
    
    
    
    
    NSMutableDictionary *attribute = [NSMutableDictionary dictionary];
    attribute[UITextAttributeTextColor] = [UIColor whiteColor];
    attribute[UITextAttributeFont] = [UIFont systemFontOfSize:19];
    [navBar setTitleTextAttributes:attribute];
}



- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    viewController.hidesBottomBarWhenPushed = YES;
    [super pushViewController:viewController animated:animated];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
