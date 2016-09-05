//
//  ViewController.m
//  LGXdeledage
//
//  Created by 兴哥哥 on 16/9/5.
//  Copyright © 2016年 123. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    
    LGXView *views;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)clickbtn:(id)sender {
    views = [[LGXView alloc]init];
    views.delegate = self;
    views.center = self.view.center;
    [views show];
    
}
- (void)Click
{
    [views disMiss];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
