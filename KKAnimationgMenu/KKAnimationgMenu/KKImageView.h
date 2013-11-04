//
//  KKImageView.h
//  testBlock
//
//  Created by SunKe on 13-11-4.
//  Copyright (c) 2013年 Coneboy_K. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface KKImageView : UIImageView
{
    NSString *idxNum;
}



- (id)initWithFrame:(CGRect)frame idxNum:(NSString *)idxNumTmp;


// 手势
@property (nonatomic, strong) UITapGestureRecognizer *tapGesture;



@end



///--------------------------------
/// @name UIView+MenuActionHandlers
///--------------------------------

/**
 A category on UIView to attach a given block as an action for a single tap gesture.
 Credit: http://www.cocoanetics.com/2012/06/associated-objects/
 
 @param block The block to execute.
 */
@interface UIView (MenuActionHandlers)

- (void)setMenuActionWithBlock:(void (^)(void))block;

@end
