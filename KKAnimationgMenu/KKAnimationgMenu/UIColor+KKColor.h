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




@end
