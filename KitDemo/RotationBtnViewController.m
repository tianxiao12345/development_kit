//
//  RotationBtnViewController.m
//  KitDemo
//
//  Created by tianxiao on 15/9/20.
//  Copyright (c) 2015年 wantong. All rights reserved.
//

#import "RotationBtnViewController.h"
#import "RotationButton.h"
@interface RotationBtnViewController ()<RotationCircleDelegate>

@end

@implementation RotationBtnViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    RotationButton *btn = [[RotationButton alloc] initWithFrame:CGRectMake(66, 120, (self.view.width - 66 * 2), 50)];
    btn.rotationDelegate = self;
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"代码非自动布局" forState:UIControlStateNormal];
    [self.view addSubview:btn];
}


- (void)onClickRotationButton:(RotationButton *)rButton ImageView:(UIImage *)rotationImage{
    [rButton showCircleRotation];
}

@end
