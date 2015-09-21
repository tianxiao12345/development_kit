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
    RotationButton *btn = [[RotationButton alloc] initWithFrame:CGRectZero];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(AutoSizeW*66));
        make.top.equalTo(@(AutoSizeH*120));
        make.width.equalTo(self.view).offset(-132*AutoSizeW);
        make.height.equalTo(@(50*AutoSizeH));
    }];
    btn.rotationDelegate = self;
    btn.backgroundColor = [UIColor redColor];
    [btn setTitle:@"代码非自动布局" forState:UIControlStateNormal];
}


- (void)onClickRotationButton:(RotationButton *)rButton ImageView:(UIImage *)rotationImage{
    [rButton showCircleRotation];
}

@end
