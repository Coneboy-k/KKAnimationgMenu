//
//  KKAnimationgMenu.m
//  KKAnimationgMenu
//
//  Created by SunKe on 13-11-4.
//  Copyright (c) 2013年 Coneboy_K. All rights reserved.
//

#import "KKAnimationgMenu.h"
#import "UIColor+KKColor.h"
#import "KKImageView.h"


@implementation KKAnimationgMenu

@synthesize delegate;
@synthesize contentView = _contentView;


#pragma mark - init

- (instancetype)initWithImages:(NSArray *)images withFrame:(CGRect)frame wideNum:(NSInteger)wideNumTmp highNum:(NSInteger)highNumTmp
{
    self = [super initWithFrame:frame];
    if (self)
    {
        _contentView = [[UIScrollView alloc]initWithFrame:frame];
        _contentView.alwaysBounceHorizontal = NO;
        _contentView.alwaysBounceVertical= NO;
        _contentView.bounces = YES;
        _contentView.clipsToBounds = NO;
        _contentView.showsHorizontalScrollIndicator = NO;
        _contentView.showsVerticalScrollIndicator = NO;
        
        cellWidth = self.frame.size.width/wideNumTmp;
        cellHight = self.frame.size.height/highNumTmp;
        highNum = highNumTmp;
        wideNum = wideNumTmp;

        for (int i=0; i <highNum ; i++){
            for (int y=0; y<wideNum; y++){
                // every imageView‘s frame;
                CGFloat cellOriginX = y*cellWidth;
                CGFloat cellOriginY = i*cellHight;
                
                CGRect imageViewFrameTmp =CGRectMake(cellOriginX, cellOriginY, cellWidth, cellHight);
                
                // load name
                NSString *idxTmp = [NSString stringWithFormat:@"%i",i*wideNum+y];
                
                KKImageView *cellImgView = [[KKImageView alloc]initWithFrame:imageViewFrameTmp
                                                                      idxNum:idxTmp];
                NSString *imgNameTmp = [images objectAtIndex:(i*wideNumTmp+y)];
                cellImgView.image = [UIImage imageNamed:imgNameTmp];
                cellImgView.backgroundColor = [UIColor randomColor];
                
                [_contentView addSubview:cellImgView];
            }
        }
        [self addSubview:_contentView];

        // add gesture
        self.tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleTap:)];
        [self addGestureRecognizer:self.tapGesture];
    }
    
    return self;
}


#pragma mark - Gestures

- (void)handleTap:(UITapGestureRecognizer *)recognizer
{
    CGPoint point = [recognizer locationInView:self];
//    NSLog(@"handleSingleTap!pointx:%f,y:%f",point.x,point.y);
    
    if (! CGRectContainsPoint(self.contentView.frame, point))
    {
//        NSLog(@"不再该区域内 ");
    }
    else
    {
//        NSLog(@"在该区域内 ");
        NSInteger indexNum = [self judgeWhichNum:point];
        if (indexNum != NSNotFound) {
            [self didTapkkMenuAtIndex:indexNum];
        }

    }
}


/**
 *  judge touch in which view
 *
 *  @param pointTmp touch in view
 *
 *  @return touch in which view
 */
- (NSInteger)judgeWhichNum:(CGPoint)pointTmp
{
    NSInteger whichNum = 0;
    
    NSInteger whichHang;
    NSInteger whichLie;
    
    CGFloat locationX = pointTmp.x;
    CGFloat locationY = pointTmp.y;
    
    for (int i=0; i<highNum; i++) {
        CGFloat cellOriginX = i*cellWidth;
        if (locationX < cellOriginX) {
            whichLie = i-1;
//            NSLog(@"点击的x=%f viewfreme的x=%f   这是第%i列",locationX,cellOriginX,whichLie);
            break;
        }
    }
    for (int y=0;  ; y++) {
        CGFloat cellOriginY = y*cellHight;
        if (locationY < cellOriginY) {
            whichHang = y-1;
//            NSLog(@"点击的x=%f viewfreme的x=%f   这是第%i行",locationY,cellOriginY,whichHang);
            break;
        }
        
    }
    whichNum = whichHang*wideNum +whichLie;
    return whichNum;
}


#pragma mark - delegate

- (void)didTapkkMenuAtIndex:(NSUInteger)index
{
    if ([self.delegate respondsToSelector:@selector(kkMenu:didTapkkMenuAtIndex:)])
    {
        [self.delegate kkMenu:self didTapkkMenuAtIndex:index];
    }

}



@end






