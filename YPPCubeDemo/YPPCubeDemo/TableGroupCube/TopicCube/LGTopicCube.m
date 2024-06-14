//
//  LGTopicCube.m
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2022/2/23.
//
#import "LGTopicAvatarCube.h"
#import "LGTextCube.h"
#import "LGTopicCube.h"

@implementation LGTopicCube
- (void)setupView:(UIView *)view {
    [super setupView:view];
    [self setupCubes];
    [self reload];
}

- (void)setupCubes {
    NSArray *arr = @[
        [[LGTopicAvatarCube alloc] initWithData:nil],
        [[LGTextCube alloc] initWithData:nil],
    ];
    [self.cubes addObjectsFromArray:arr];
}

- (CGFloat)cubeHeight {
    return 100;
}
@end
