//
//  LGTopicAvatarCube.m
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2022/2/23.
//
#import <Masonry.h>
#import "LGTopicAvatarCube.h"
@interface LGTopicAvatarCube()
@property (nonatomic, strong) UIView *avatar;
@end

@implementation LGTopicAvatarCube
- (void)setupView:(UIView *)view {
    [super setupView:view];
    [view addSubview:self.avatar];
    [self.avatar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(view).offset(16);
        make.size.mas_equalTo(CGSizeMake(100, 100));
        make.centerY.equalTo(view);
    }];
}


- (CGFloat)cubeWidth {
    return 126;
}

- (CGFloat)cubeHeight {
    return 120;
}

- (UIView *)avatar {
    if (_avatar) return _avatar;
    _avatar = [[UIView alloc] init];
    _avatar.backgroundColor = UIColor.redColor;
    _avatar.layer.cornerRadius = 8;
    return _avatar;
}
@end
