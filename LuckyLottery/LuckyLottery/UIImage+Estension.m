//
//  UIImage+Estension.m
//  LuckyLottery
//
//  Created by MS on 16/9/25.
//  Copyright © 2016年 JY. All rights reserved.
//

#import "UIImage+Estension.h"

@implementation UIImage (Estension)
+ (UIImage *)resizableImage:(NSString *)name{
    UIImage *normal = [UIImage imageNamed:name];
    CGFloat w = normal.size.width * 0.5;
    CGFloat h = normal.size.height * 0.5;
    return  [normal resizableImageWithCapInsets:UIEdgeInsetsMake(h, w, h, w)];
     
}
@end
