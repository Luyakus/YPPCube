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
        make.left.equalTo(view).offset(16);
        make.top.equalTo(view).offset(10);
        make.right.equalTo(view).offset(-16);
        make.bottom.equalTo(view).offset(-10);
    }];
    self.contentLab.layer.borderColor = UIColor.redColor.CGColor;
    self.contentLab.layer.borderWidth = 1;
    
    view.layer.borderColor = UIColor.purpleColor.CGColor;
    view.layer.borderWidth = 1;
    view.layer.shadowColor = UIColor.blueColor.CGColor;
    view.layer.masksToBounds = NO;
    view.layer.shadowOffset = CGSizeMake(0, 3);
    view.layer.shadowOpacity = 1;
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
    _contentLab.textAlignment = NSTextAlignmentCenter;
    _contentLab.numberOfLines = 0;
    return _contentLab;
}
@end

