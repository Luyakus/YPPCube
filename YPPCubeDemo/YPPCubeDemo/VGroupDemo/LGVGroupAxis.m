//
//  LGVGroupAxis.m
//  YPPCubeDemo
//
//  Created by abc on 2024/6/15.
//

#import "LGTextCube.h"
#import "LGVGroupAxis.h"
#import <YPPCube/YPPGroupCube.h>

@implementation LGVGroupAxis
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
    YPPVGroupCube *v = [[YPPVGroupCube alloc] initWithData:data];
    [v.cubes addObjectsFromArray:@[
        [[LGTextCube alloc] initWithData: data],
        [[LGTextCube alloc] initWithData: data],
        [[LGTextCube alloc] initWithData: data],
    ]];
    [self.cubes addObject:v];
    
}
@end
