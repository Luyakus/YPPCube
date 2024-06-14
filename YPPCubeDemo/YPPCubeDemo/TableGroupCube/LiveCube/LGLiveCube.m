//
//  LGLiveCube.m
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2022/2/23.
//
#import "LGLiveStreamCube.h"
#import "LGLiveCoverCube.h"

#import "LGLiveCube.h"

@implementation LGLiveCube
- (void)setupView:(UIView *)view {
    [super setupView:view];
    [self setupCubes];
    [self reload];
}

- (void)setupCubes {
    NSArray *arr = @[
        [[LGLiveStreamCube alloc] initWithData:nil],
        [[LGLiveCoverCube alloc] initWithData:nil],
    ];
    [self.cubes addObjectsFromArray:arr];
}

- (CGFloat)cubeHeight {
    return 100;
}
@end
