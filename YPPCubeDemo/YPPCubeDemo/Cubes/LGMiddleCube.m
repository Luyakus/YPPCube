//
//  LGMiddleCube.m
//  YPPCubeDemo
//
//  Created by abc on 2024/6/17.
//
#import "LGChatCube.h"
#import "LGSiderCube.h"
#import "LGMiddleCube.h"

@implementation LGMiddleCube
- (void)setupView:(UIView *)view {
    [super setupView:view];
    [self setupCubes];
    [self reload];
}

- (void)setupCubes {
    [self.cubes addObjectsFromArray:@[
        [[LGChatCube alloc] initWithData:nil],
        [[LGSiderCube alloc] initWithData:nil]
    ]];
}


@end

