//
//  UIColor+KKColor.h
//  TS
//
//  Created by SunKe on 13-11-4.
//  Copyright (c) 2013年 SunKe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (KKColor)

/**
 *  根据RGB数值转化为UIColor，RGB范围为0~255
 *
 *  @param redTmp   红色数值
 *  @param greenTmp 绿色数值
 *  @param blueTmp  蓝色数值
 *
 *  @return iOS系统所需颜色
 */
+ (UIColor *)iOSColorRed:(CGFloat )redTmp iOSColorGreen:(CGFloat )greenTmp iOSColorBlue:(CGFloat )blueTmp;

/**
 *  获取随机颜色
 *
 *  @return 返回随机颜色
 */
+ (UIColor *)randomColor;



// iOS7Color

+ (instancetype)iOS7redColor;
+ (instancetype)iOS7orangeColor;
+ (instancetype)iOS7yellowColor;
+ (instancetype)iOS7greenColor;
+ (instancetype)iOS7lightBlueColor;
+ (instancetype)iOS7darkBlueColor;
+ (instancetype)iOS7purpleColor;
+ (instancetype)iOS7pinkColor;
+ (instancetype)iOS7darkGrayColor;
+ (instancetype)iOS7lightGrayColor;

// Gradient Colors
+ (instancetype)iOS7redGradientStartColor;
+ (instancetype)iOS7redGradientEndColor;

+ (instancetype)iOS7orangeGradientStartColor;
+ (instancetype)iOS7orangeGradientEndColor;

+ (instancetype)iOS7yellowGradientStartColor;
+ (instancetype)iOS7yellowGradientEndColor;

+ (instancetype)iOS7greenGradientStartColor;
+ (instancetype)iOS7greenGradientEndColor;

+ (instancetype)iOS7tealGradientStartColor;
+ (instancetype)iOS7tealGradientEndColor;

+ (instancetype)iOS7blueGradientStartColor;
+ (instancetype)iOS7blueGradientEndColor;

+ (instancetype)iOS7violetGradientStartColor;
+ (instancetype)iOS7violetGradientEndColor;

+ (instancetype)iOS7magentaGradientStartColor;
+ (instancetype)iOS7magentaGradientEndColor;

+ (instancetype)iOS7blackGradientStartColor;
+ (instancetype)iOS7blackGradientEndColor;

+ (instancetype)iOS7silverGradientStartColor;
+ (instancetype)iOS7silverGradientEndColor;



@end
