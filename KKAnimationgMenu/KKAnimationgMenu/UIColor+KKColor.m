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



#pragma mark -
#pragma mark iOS7的颜色们

+ (instancetype)iOS7redColor;
{
    return [UIColor colorWithRed:1.0f green:0.22f blue:0.22f alpha:1.0f];
}

+ (instancetype)iOS7orangeColor;
{
    return [UIColor colorWithRed:1.0f green:0.58f blue:0.21f alpha:1.0f];
}

+ (instancetype)iOS7yellowColor;
{
    return [UIColor colorWithRed:1.0f green:0.79f blue:0.28f alpha:1.0f];
}

+ (instancetype)iOS7greenColor;
{
    return [UIColor colorWithRed:0.27f green:0.85f blue:0.46f alpha:1.0f];
}

+ (instancetype)iOS7lightBlueColor;
{
    return [UIColor colorWithRed:0.18f green:0.67f blue:0.84f alpha:1.0f];
}

+ (instancetype)iOS7darkBlueColor;
{
    return [UIColor colorWithRed:0.0f green:0.49f blue:0.96f alpha:1.0f];
}

+ (instancetype)iOS7purpleColor;
{
    return [UIColor colorWithRed:0.35f green:0.35f blue:0.81f alpha:1.0f];
}

+ (instancetype)iOS7pinkColor;
{
    return [UIColor colorWithRed:1.0f green:0.17f blue:0.34f alpha:1.0f];
}

+ (instancetype)iOS7darkGrayColor;
{
    return [UIColor colorWithRed:0.56f green:0.56f blue:0.58f alpha:1.0f];
}

+ (instancetype)iOS7lightGrayColor;
{
    return [UIColor colorWithRed:0.78f green:0.78f blue:0.8f alpha:1.0f];
}

#pragma mark -
#pragma mark Gradient Colors iOS7的阶梯颜色

+ (instancetype)iOS7redGradientStartColor;
{
    return [UIColor colorWithRed:1.0f green:0.37f blue:0.23f alpha:1.0f];
}

+ (instancetype)iOS7redGradientEndColor;
{
    return [UIColor colorWithRed:1.0f green:0.16f blue:0.41f alpha:1.0f];
}

+ (instancetype)iOS7orangeGradientStartColor;
{
    return [UIColor colorWithRed:1.0f green:0.58f blue:0.0f alpha:1.0f];
}

+ (instancetype)iOS7orangeGradientEndColor;
{
    return [UIColor colorWithRed:1.0f green:0.37f blue:0.23f alpha:1.0f];
}

+ (instancetype)iOS7yellowGradientStartColor;
{
    return [UIColor colorWithRed:1.0f green:0.86f blue:0.3f alpha:1.0f];
}

+ (instancetype)iOS7yellowGradientEndColor;
{
    return [UIColor colorWithRed:1.0f green:0.8f blue:0.01f alpha:1.0f];
}

+ (instancetype)iOS7greenGradientStartColor;
{
    return [UIColor colorWithRed:0.53f green:0.99f blue:0.44f alpha:1.0f];
}

+ (instancetype)iOS7greenGradientEndColor;
{
    return [UIColor colorWithRed:0.04f green:0.83f blue:0.09f alpha:1.0f];
}

+ (instancetype)iOS7tealGradientStartColor;
{
    return [UIColor colorWithRed:0.32f green:0.93f blue:0.78f alpha:1.0f];
}

+ (instancetype)iOS7tealGradientEndColor;
{
    return [UIColor colorWithRed:0.35f green:0.78f blue:0.98f alpha:1.0f];
}

+ (instancetype)iOS7blueGradientStartColor;
{
    return [UIColor colorWithRed:0.10f green:0.84f blue:0.99f alpha:1.0f];
}

+ (instancetype)iOS7blueGradientEndColor;
{
    return [UIColor colorWithRed:0.11f green:0.38f blue:0.94f alpha:1.0f];
}

+ (instancetype)iOS7violetGradientStartColor;
{
    return [UIColor colorWithRed:0.78f green:0.27f blue:0.99f alpha:1.0f];
}

+ (instancetype)iOS7violetGradientEndColor;
{
    return [UIColor colorWithRed:0.35f green:0.34f blue:0.84f alpha:1.0f];
}

+ (instancetype)iOS7magentaGradientStartColor;
{
    return [UIColor colorWithRed:0.94f green:0.30f blue:0.71f alpha:1.0f];
}

+ (instancetype)iOS7magentaGradientEndColor;
{
    return [UIColor colorWithRed:0.78f green:0.26f blue:0.99f alpha:1.0f];
}

+ (instancetype)iOS7blackGradientStartColor;
{
    return [UIColor colorWithRed:0.29f green:0.29f blue:0.29f alpha:1.0f];
}

+ (instancetype)iOS7blackGradientEndColor;
{
    return [UIColor colorWithRed:0.17f green:0.17f blue:0.17f alpha:1.0f];
}

+ (instancetype)iOS7silverGradientStartColor;
{
    return [UIColor colorWithRed:0.86f green:0.87f blue:0.87f alpha:1.0f];
}

+ (instancetype)iOS7silverGradientEndColor;
{
    return [UIColor colorWithRed:0.54f green:0.55f blue:0.56f alpha:1.0f];
}




@end
