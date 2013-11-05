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


/**
 *  init KKImageView
 *
 *  @param frame     ImageView Frame
 *  @param idxNumTmp sequence in show array
 *
 *  @return KKImageView
 */

- (id)initWithFrame:(CGRect)frame idxNum:(NSString *)idxNumTmp;



@end

