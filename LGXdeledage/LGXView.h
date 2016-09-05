//
//  LGXView.h
//  LGXdeledage
//
//  Created by 兴哥哥 on 16/9/5.
//  Copyright © 2016年 123. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol LGXViewDelegate <NSObject>

@optional
- (void)Click;
@end

@interface LGXView : UIView
{
    
    UIButton * btn;
}

@property(weak)id<LGXViewDelegate>delegate;

-(instancetype)initWithFrame:(CGRect)frame;
- (void)show;
- (void)disMiss;

@end;