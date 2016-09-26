//
//  MyLottery.m
//  LuckyLottery
//
//  Created by MS on 16/9/25.
//  Copyright © 2016年 JY. All rights reserved.
//

#import "MyLottery.h"
#import "UIImage+Estension.h"
@interface MyLottery ()
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;

@end

@implementation MyLottery

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    [self.loginBtn setBackgroundImage:[UIImage resizableImage:@"RedButton"] forState:UIControlStateNormal];
    [self.loginBtn setBackgroundImage:[UIImage resizableImage:@"RedButtonPressed"] forState:UIControlStateHighlighted];
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
