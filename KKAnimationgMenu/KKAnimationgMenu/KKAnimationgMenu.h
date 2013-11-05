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

@optional
- (void)kkMenu:(KKAnimationgMenu *)aa didTapkkMenuAtIndex:(NSUInteger)index;

@end

@interface KKAnimationgMenu : UIView
{    
    CGFloat cellWidth;
    CGFloat cellHight;
    
    NSInteger highNum;
    NSInteger wideNum;
}


/**
 *  init KKAnimationgMenu
 *
 *  @param images     images array
 *  @param frame      KKAnimationgMenu's frame
 *  @param wideNumTmp how many imageView in each row
 *  @param highNumTmp how many imageView in each line
 *
 *  @return KKAnimationgMenu
 */
- (instancetype)initWithImages:(NSArray *)images withFrame:(CGRect)frame wideNum:(NSInteger)wideNumTmp highNum:(NSInteger)highNumTmp;


@property (nonatomic, strong, readonly) UIScrollView *contentView;

// 手势
@property (nonatomic, strong) UITapGestureRecognizer *tapGesture;

// delegate
@property (nonatomic, weak) id <kkAnimationgMenuDelegate> delegate;


@end




