//
//  LGComposeCube.m
//  YPPCubeDemo
//
//  Created by abc on 2024/6/17.
//
#import "LGSeatCube.h"
#import "LGHeaderCube.h"
#import "LGMiddleCube.h"
#import "LGInputCube.h"
#import "LGComposeCube.h"

@implementation LGComposeCube

- (void)setupView:(UIView *)view {
    [super setupView:view];
    [self setupCubes];
    [self reload];
}

- (void)setupCubes {
    [self.cubes addObjectsFromArray:@[
        [[LGHeaderCube alloc] initWithData:nil],
        [[LGSeatCube alloc] initWithData:nil],
        [[LGMiddleCube alloc] initWithData:nil],
        [[LGInputCube alloc] initWithData:nil]
    ]];
}

@end
