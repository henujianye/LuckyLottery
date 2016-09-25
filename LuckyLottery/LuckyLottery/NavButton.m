//
//  NavButton.m
//  LuckyLottery
//
//  Created by MS on 16/9/25.
//  Copyright © 2016年 JY. All rights reserved.
//

#import "NavButton.h"
@interface NavButton()

@property (nonatomic, strong) UIFont *attributeFont;


@end

@implementation NavButton



- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    NSLog(@"---------initWithCoder");
    
    if (self = [super initWithCoder:aDecoder]) {
        self.attributeFont = [UIFont systemFontOfSize:10];
        self.titleLabel.font = self.attributeFont;
        self.imageView.contentMode = UIViewContentModeCenter;
        self.frame = CGRectMake(0, 0, 76, 50);
    }
    return self;
}


- (CGRect)titleRectForContentRect:(CGRect)contentRect{

    NSLog(@"---------titleRectForContentRect");

    
    CGFloat titleX = 0;
    CGFloat titleY = 0;
    CGFloat titleH = contentRect.size.height;
    NSDictionary *attribute = @{NSFontAttributeName : self.attributeFont};
    
    CGFloat titleW = [self.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:attribute context:nil].size.width;
    
    NSLog(@"---------titleW %f",titleW);

    return CGRectMake(titleX, titleY, titleW, titleH);
    
    
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect{

    NSLog(@"---------imageRectForContentRect");

    NSLog(@"---------contentRect %f",contentRect.size.width);

    CGFloat imageW = 10;
    CGFloat imageX = contentRect.size.width - imageW;
    CGFloat imageY = 0;
    CGFloat imageH = contentRect.size.height;
    return CGRectMake(imageX, imageY, imageW, imageH);

    
    
    
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
