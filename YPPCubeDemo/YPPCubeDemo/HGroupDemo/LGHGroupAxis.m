//
//  LGHGroupAxis.m
//  YPPCubeDemo
//
//  Created by abc on 2024/6/17.
//
#import "LGTextCube.h"
#import "LGHGroupAxis.h"
#import <YPPCube/YPPGroupCube.h>

@implementation LGHGroupAxis

- (instancetype)initWithData:(id)data {
    if (self = [super initWithData:data]) {
        [self setupCubes:data];
    }
    return self;
}

- (void)setupView:(UIView *)rootview {
    [super setupView:rootview];
    [self reload];
    [self.cubes makeObjectsPerformSelector:@selector(reload)];
}

- (void)setupCubes:(id)data {
    YPPHGroupCube *h = [[YPPHGroupCube alloc] initWithData:data];
    [h.cubes addObjectsFromArray:@[
        [[LGTextCube alloc] initWithData: data],
        [[LGTextCube alloc] initWithData: data],
        [[LGTextCube alloc] initWithData: data],
    ]];
    [self.cubes addObject:h];
    
}

@end
