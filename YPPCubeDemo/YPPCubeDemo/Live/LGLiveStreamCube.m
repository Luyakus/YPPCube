//
//  LGLiveStreamCube.m
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2022/2/23.
//
#import <Masonry.h>
#import "LGLiveStreamCube.h"

@implementation LGLiveStreamCube
- (void)setupView:(UIView *)view {
    [super setupView:view];
    UIImageView *picView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"live"]];
    [view addSubview:picView];
    [picView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.bottom.equalTo(view);
    }];
}
@end
