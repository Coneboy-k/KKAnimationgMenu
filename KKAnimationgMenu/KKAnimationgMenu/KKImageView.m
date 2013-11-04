//
//  KKImageView.m
//  testBlock
//
//  Created by SunKe on 13-11-4.
//  Copyright (c) 2013年 Coneboy_K. All rights reserved.
//

#import "KKImageView.h"
#import <QuartzCore/QuartzCore.h>

#import <objc/runtime.h>

static char kActionHandlerTapBlockKey;
static char kActionHandlerTapGestureKey;

@implementation KKImageView


- (id)initWithFrame:(CGRect)frame idxNum:(NSString *)idxNumTmp;
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        idxNum = idxNumTmp;
        [self startAnimation];
        
        // 加入点击手势判断
        self.tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(kkIndex:)];
    }
    return self;
}


- (void)startAnimation
{
    self.layer.transform = CATransform3DMakeScale(0.5, 0.5, 1);
    self.alpha = 0.3;
    [UIView animateWithDuration:0.8
                          delay:([idxNum intValue]*0.05f)
         usingSpringWithDamping:0.5
          initialSpringVelocity:0.2
                        options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationCurveEaseInOut
                     animations:^{
                         self.layer.transform = CATransform3DIdentity;
                         self.alpha = 1;
                     }
                     completion:nil];

}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end




#pragma mark - UIView+MenuActionHandlers

@implementation UIView (MenuActionHandlers)

- (void)setMenuActionWithBlock:(void (^)(void))block {
	UITapGestureRecognizer *gesture = objc_getAssociatedObject(self, &kActionHandlerTapGestureKey);
	
	if (!gesture) {
		gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleActionForTapGesture:)];
		[self addGestureRecognizer:gesture];
		objc_setAssociatedObject(self, &kActionHandlerTapGestureKey, gesture, OBJC_ASSOCIATION_RETAIN);
	}
    
	objc_setAssociatedObject(self, &kActionHandlerTapBlockKey, block, OBJC_ASSOCIATION_COPY);
}

- (void)handleActionForTapGesture:(UITapGestureRecognizer *)gesture {
	if (gesture.state == UIGestureRecognizerStateRecognized) {
		void(^action)(void) = objc_getAssociatedObject(self, &kActionHandlerTapBlockKey);
		
		if (action) {
			action();
		}
	}
}




@end

