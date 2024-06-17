//
//  LGZGroupAxis.m
//  YPPCubeDemo
//
//  Created by abc on 2024/6/17.
//

#import "LGZGroupAxis.h"
#import "LGLiveStreamCube.h"
#import "LGLiveCoverCube.h"
#import <YPPCube/YPPGroupCube.h>

@implementation LGZGroupAxis

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
    YPPZGroupCube *z = [[YPPZGroupCube alloc] initWithData:data];
    [z.cubes addObjectsFromArray:@[
        [[LGLiveStreamCube alloc] initWithData: data],
        [[LGLiveCoverCube alloc] initWithData: data],
    ]];
    [self.cubes addObject:z];
    
}
@end
