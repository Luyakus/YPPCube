//
//  LGEmojiCube.m
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2022/2/23.
//
#import <Masonry.h>
#import "LGFeedEmojiCube.h"
@interface LGFeedEmojiCube()
@property (nonatomic, strong) UIButton *emojiBtn;
@property (nonatomic, strong) UIButton *likeBtn;
@end

@implementation LGFeedEmojiCube
- (void)setupView:(UIView *)view {
    [super setupView:view];
    [view addSubview:self.emojiBtn];
    [self.emojiBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(view).offset(16);
        make.centerY.equalTo(view);
        make.size.mas_equalTo(CGSizeMake(70, 35));
    }];
    
    [view addSubview:self.likeBtn];
    [self.likeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(view).offset(-16);
        make.centerY.equalTo(view);
        make.size.mas_equalTo(CGSizeMake(70, 35));
    }];
}

- (CGFloat)cubeHeight {
    return 40;
}

- (UIButton *)emojiBtn {
    if (_emojiBtn) return _emojiBtn;
    _emojiBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [_emojiBtn setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    [_emojiBtn setTitle:@"表情" forState:UIControlStateNormal];
    _emojiBtn.backgroundColor = UIColor.cyanColor;
    return _emojiBtn;
}

- (UIButton *)likeBtn {
    if (_likeBtn) return _likeBtn;
    _likeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [_likeBtn setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    [_likeBtn setTitle:@"点赞" forState:UIControlStateNormal];
    _likeBtn.backgroundColor = UIColor.greenColor;
    return _likeBtn;
}
@end
