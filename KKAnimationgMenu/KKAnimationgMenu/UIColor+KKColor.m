//
//  UIColor+KKColor.m
//  TS
//
//  Created by SunKe on 13-11-4.
//  Copyright (c) 2013年 SunKe. All rights reserved.
//

#import "UIColor+KKColor.h"

// 随机颜色的值。
static inline CGFloat randomColorFloat()
{
    return (CGFloat)arc4random()/RAND_MAX;
}


@implementation UIColor (KKColor)

#pragma mark -
#pragma mark 自己的颜色值

/**
 *  根据RGB数值转化为UIColor，RGB范围为0~255
 *
 *  @param redTmp   红色数值
 *  @param greenTmp 绿色数值
 *  @param blueTmp  蓝色数值
 *
 *  @return iOS系统所需颜色
 */
+ (UIColor *)iOSColorRed:(CGFloat )redTmp iOSColorGreen:(CGFloat )greenTmp iOSColorBlue:(CGFloat )blueTmp
{
    return [UIColor colorWithRed:redTmp/255 green:greenTmp/255 blue:blueTmp/255 alpha:1];
}


/**
 *  获取随机颜色
 *
 *  @return 返回随机颜色
 */
+ (UIColor *)randomColor
{
    return [UIColor colorWithRed:randomColorFloat()
                           green:randomColorFloat()
                            blue:randomColorFloat()
                           alpha:1.0];
}




@end
