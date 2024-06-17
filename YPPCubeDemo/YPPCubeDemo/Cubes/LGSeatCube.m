//
//  LGSeatCube.m
//  YPPCubeDemo
//
//  Created by abc on 2024/6/17.
//
#import <Masonry.h>
#import "LGSeatCube.h"

@implementation LGSeatCube

- (void)setupView:(UIView *)view {
    [super setupView:view];
    view.backgroundColor = UIColor.cyanColor;
    UILabel *label = [UILabel new];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"座位框";
    [view addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.bottom.equalTo(view);
    }];
}

- (CGFloat)cubeHeight {
    return 200;
}

@end
