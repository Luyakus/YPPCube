//
//  LGLiveCoverCube.m
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2022/2/23.
//
#import <Masonry.h>
#import "LGLiveCoverCube.h"
@interface LGLiveCoverCube()
@property (nonatomic, strong) UIView *coverView;
@property (nonatomic, strong) UILabel *descLab;

@end
@implementation LGLiveCoverCube
- (void)setupView:(UIView *)view {
    [super setupView:view];
    
    [view addSubview:self.coverView];
    [self.coverView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.bottom.equalTo(view);
    }];
    
    [view addSubview:self.descLab];
    [self.descLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.bottom.equalTo(view);
    }];
}


- (UILabel *)descLab {
    if (_descLab) return _descLab;
    _descLab = [UILabel new];
    _descLab.text = @"被禁言";
    _descLab.textAlignment = NSTextAlignmentCenter;
    _descLab.textColor = UIColor.whiteColor;
    _descLab.font = [UIFont systemFontOfSize:16];
    return _descLab;
}

- (UIView *)coverView {
    if (_coverView) return _coverView;
    _coverView = [[UIView alloc] initWithFrame:CGRectZero];
    _coverView.backgroundColor = UIColor.blackColor;
    _coverView.alpha = 0.3;
    return _coverView;
}
@end
