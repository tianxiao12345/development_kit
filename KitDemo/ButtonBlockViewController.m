//
//  ButtonBlockViewController.m
//  KitDemo
//
//  Created by tianxiao on 15/9/22.
//  Copyright (c) 2015年 wantong. All rights reserved.
//

#import "ButtonBlockViewController.h"

@interface ButtonBlockViewController ()
@property (weak, nonatomic) IBOutlet UIButton *clickme;

@end

@implementation ButtonBlockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_clickme addAction:^(UIButton *btn) {
       UIAlertView* alert= [[UIAlertView  alloc] initWithTitle:@"block respond successful" message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:@"sure", nil];
        [alert show];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
