//
//  LGLayerCube.m
//  YPPCubeDemo
//
//  Created by abc on 2024/6/17.
//
#import "LGInputPresentCube.h"
#import "LGComposeCube.h"
#import "LGLayerCube.h"

@implementation LGLayerCube

- (void)setupView:(UIView *)view {
    [super setupView:view];
    [self setupCubes];
    [self reload];
}

- (void)setupCubes {
    [self.cubes addObjectsFromArray:@[
        [[LGComposeCube alloc] initWithData:nil],
        [[LGInputPresentCube alloc] initWithData:nil]
    ]];
}

@end
