//
//  LGAvatarCube.m
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2022/2/23.
//
#import <Masonry.h>
#import "LGFeedAvatarCube.h"
@interface LGFeedAvatarCube()
@property (nonatomic, strong) UIView *avatar;

@end

@implementation LGFeedAvatarCube
- (void)setupView:(UIView *)view {
    [super setupView:view];
    [view addSubview:self.avatar];
    [self.avatar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(view).offset(16);
        make.centerY.equalTo(view);
        make.size.mas_equalTo(CGSizeMake(40, 40));
    }];
}

- (CGFloat)cubeHeight {
    return 60;
}

- (UIView *)avatar {
    if (_avatar) return _avatar;
    _avatar = [[UIView alloc] init];
    _avatar.backgroundColor = UIColor.redColor;
    _avatar.layer.cornerRadius = 20;
    return _avatar;
}
@end
