//
//  LGHeaderCube.m
//  YPPCubeDemo
//
//  Created by abc on 2024/6/17.
//
#import <Masonry.h>
#import "LGHeaderCube.h"

@interface LGHeaderCube()
@property (nonatomic, strong) UIView *avatar;
@end

@implementation LGHeaderCube
- (void)setupView:(UIView *)view {
    [super setupView:view];
    [view addSubview:self.avatar];
    [self.avatar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(view).offset(16);
        make.size.mas_equalTo(CGSizeMake(40, 40));
        make.centerY.equalTo(view);
    }];
    
    UILabel *label = [UILabel new];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"头部区域";
    [view addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(view).offset(20);
        make.centerX.equalTo(view);
    }];
    
    view.backgroundColor = UIColor.yellowColor;
}

- (CGFloat)cubeHeight {
    return 90;
}

- (UIView *)avatar {
    if (_avatar) return _avatar;
    _avatar = [[UIView alloc] init];
    _avatar.backgroundColor = UIColor.redColor;
    _avatar.layer.cornerRadius = 20;
    return _avatar;
}
@end
