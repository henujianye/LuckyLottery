//
//  JyMyTabbar.h
//  LuckyLottery
//
//  Created by MS on 16/9/24.
//  Copyright © 2016年 JY. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JyMyTabbar;
@protocol JyMyTabbarDelegate <NSObject>

@optional

- (void)myTabbar:(JyMyTabbar *)tabbar didSelectedButtonFrom:(int )from to:(int)to;

@end

@interface JyMyTabbar : UIView

@property (nonatomic, weak) id<JyMyTabbarDelegate> delegate;


@end
