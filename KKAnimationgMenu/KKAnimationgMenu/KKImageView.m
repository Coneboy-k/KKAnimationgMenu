//
//  KKImageView.m
//  testBlock
//
//  Created by SunKe on 13-11-4.
//  Copyright (c) 2013年 Coneboy_K. All rights reserved.
//

#import "KKImageView.h"
#import <QuartzCore/QuartzCore.h>


@implementation KKImageView

#pragma mark - init

- (id)initWithFrame:(CGRect)frame idxNum:(NSString *)idxNumTmp;
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        idxNum = idxNumTmp;
        [self startAnimation];
        
    }
    return self;
}

#pragma mark - Animation

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


@end




