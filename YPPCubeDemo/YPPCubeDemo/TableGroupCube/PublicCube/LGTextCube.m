//
//  LGTextCube.m
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2022/2/23.
//
#import <Masonry.h>
#import "LGTextCube.h"
@interface LGTextCube()
@property (nonatomic, strong) UILabel *contentLab;
@end

@implementation LGTextCube
- (void)setupView:(UIView *)view {
    [super setupView:view];
    [view addSubview:self.contentLab];
    [self.contentLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(view).insets(UIEdgeInsetsMake(10, 16, 16, 10));
    }];
    view.layer.borderColor = UIColor.redColor.CGColor;
    view.layer.borderWidth = 1;
}

- (void)fillData:(id)data {
    [super fillData:data];
    self.contentLab.text = [NSString stringWithFormat:@"%@", data];
    [self reload];
}

- (UILabel *)contentLab {
    if (_contentLab) return _contentLab;
    _contentLab = [UILabel new];
    _contentLab.font = [UIFont systemFontOfSize:14];
    _contentLab.textColor = UIColor.blackColor;
    _contentLab.numberOfLines = 0;
    return _contentLab;
}
@end
