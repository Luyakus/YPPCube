//
//  LGComposeAxis.m
//  YPPCubeDemo
//
//  Created by abc on 2024/6/17.
//
#import "LGLayerCube.h"
#import "LGComposeAxis.h"

@implementation LGComposeAxis
- (void)setupView:(UIView *)rootview {
    [super setupView:rootview];
    [self setupCubes];
    [self reload];
}

- (void)setupCubes {
    [self.cubes addObjectsFromArray:@[
        [[LGLayerCube alloc] initWithData:nil]
    ]];
}
@end
