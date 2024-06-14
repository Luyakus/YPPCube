//
//  LGFeedCube.m
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2022/2/23.
//
#import "LGFeedAvatarCube.h"
#import "LGTextCube.h"
#import "LGFeedEmojiCube.h"
#import "LGFeedCube.h"

@implementation LGFeedCube
- (void)setupView:(UIView *)view {
    [super setupView:view];
    [self setupCubes];
    [self reload];
}

- (void)setupCubes {
    NSArray *arr = @[
        [[LGFeedAvatarCube alloc] initWithData:nil],
//        [[LGTextCube alloc] initWithData:nil],
        [[LGFeedEmojiCube alloc] initWithData:nil]
    ];
    [self.cubes addObjectsFromArray:arr];
}

- (void)fillData:(id)data {
    [super fillData:data];
    [self.cubes[1] fillData:data];
}

- (CGFloat)cubeHeight {
    return 100;
}
@end
