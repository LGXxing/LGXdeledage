//
//  LGXView.m
//  LGXdeledage
//
//  Created by 兴哥哥 on 16/9/5.
//  Copyright © 2016年 123. All rights reserved.
//

#import "LGXView.h"
#define default_scale  ([UIScreen mainScreen].bounds.size.width/375)
@implementation LGXView

//- (instancetype)init{
//    
//    self =[super init];
//   
//
//    if (self) {
//        
//        self.backgroundColor =[UIColor redColor];
//    
//        btn =[UIButton buttonWithType:UIButtonTypeSystem];
//        btn.frame = CGRectMake(50, 200, 50, 100);
//        [btn setTitle:@"点我啊" forState:UIControlStateNormal];
//        [btn addTarget:self action:@selector(Clicks:) forControlEvents:UIControlEventTouchUpInside];
//        [self addSubview:btn];
//        
//        
//    }
//    
//    
//    
//    return self;
//}
-(instancetype)initWithFrame:(CGRect)frame;
{
    self =[super initWithFrame:CGRectMake(0, 0, default_scale*250, default_scale*250)];
    if (self) {
        
        self.backgroundColor =[UIColor redColor];
        
        btn =[UIButton buttonWithType:UIButtonTypeSystem];
        btn.frame = CGRectMake(50, 50, 50, 100);
        [btn setTitle:@"点我啊" forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(Clicks:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
        
        
    }
    
    
    
    return self;

    
    
}
- (void)show
{
    UIWindow * keyWindow =[UIApplication sharedApplication ].keyWindow;
    [keyWindow addSubview:self];
    
}

- (void)disMiss
{
   
    [UIView animateWithDuration:0.3 animations:^{
        self.alpha = 0;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}
- (void)Clicks:(id)sender
{
    
    if (_delegate&&[_delegate respondsToSelector:@selector(Click)]) {
        [self disMiss];
        [_delegate Click];
    }
    
}
@end


