//
//  BugNavigationController.m
//  LuckyLottery
//
//  Created by MS on 16/9/25.
//  Copyright © 2016年 JY. All rights reserved.
//

#import "BugNavigationController.h"

@interface BugNavigationController ()
@property (nonatomic, assign) BOOL imageUp;

@end

@implementation BugNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor darkGrayColor];
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
- (IBAction)navBtnClick:(UIButton *)sender {
    
    if (self.imageUp == NO) {
        [UIView animateWithDuration:0.25 animations:^{
            sender.imageView.transform = CGAffineTransformRotate(sender.imageView.transform, M_PI);
            self.imageUp = YES;
        }];
 
    }else{
        [UIView animateWithDuration:0.25 animations:^{
            sender.imageView.transform = CGAffineTransformRotate(sender.imageView.transform, M_PI);
            self.imageUp = NO;
        }];
    }
    
    
}

@end
