//
//  KKAnimationgMenu.h
//  KKAnimationgMenu
//
//  Created by SunKe on 13-11-4.
//  Copyright (c) 2013年 Coneboy_K. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KKAnimationgMenu;

@protocol kkAnimationgMenuDelegate <NSObject>

- (void)kkMenu:(KKAnimationgMenu *)aa didTapkkMenuAtIndex:(NSUInteger)index;

@end

@interface KKAnimationgMenu : UIView
{


    CGSize cellSize;
    
    CGFloat cellWidth;
    CGFloat cellHight;
    
    
    NSInteger highNum;
    NSInteger wideNum;
}

/**
 *  初始化
 *
 *  @param images     图片数组
 *  @param wideNumTmp 每一排有多少个
 *
 *  @return id
 */
- (instancetype)initWithImages:(NSArray *)images withFrame:(CGRect)frame wideNum:(NSInteger)wideNumTmp highNum:(NSInteger)highNumTmp;

// 承载的所有的按钮的scrollview
@property (nonatomic, strong, readonly) UIScrollView *contentView;


// 手势
@property (nonatomic, strong) UITapGestureRecognizer *tapGesture;


@property (nonatomic, weak) id <kkAnimationgMenuDelegate> delegate;


@end




