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
        (arc4random() % 2 ? [[LGTextCube alloc] initWithData:nil] :  [[LGTopicAvatarCube alloc] initWithData:nil]),
        (arc4random() % 2 ? [[LGTopicAvatarCube alloc] initWithData:nil] : [[LGTextCube alloc] initWithData:nil]),
    ];
    [self.cubes addObjectsFromArray:arr];
}

- (void)fillData:(id)data {
    [super fillData:data];
    [self.cubes makeObjectsPerformSelector:@selector(fillData:) withObject:data];
}

- (CGFloat)cubeHeight {
    return 120;
}
@end
