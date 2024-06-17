//
//  LGSiderCube.m
//  YPPCubeDemo
//
//  Created by abc on 2024/6/17.
//
#import <Masonry.h>
#import "LGSiderCube.h"

@implementation LGSiderCube

- (void)setupView:(UIView *)view {
    [super setupView:view];
    view.backgroundColor = UIColor.orangeColor;
    UILabel *label = [UILabel new];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"挂件区";
    [view addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.bottom.equalTo(view);
    }];

}

- (CGFloat)cubeWidth {
    return 90;
}
@end

