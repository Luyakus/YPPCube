//
//  LGCubeCellRenderModel.m
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2022/2/24.
//
#import "LGCubeCell.h"
#import "LGCubeCellRenderModel.h"

@interface LGCubeCell()
- (void)renderCell;
@end

@interface LGCubeCellRenderModel()
@property (nonatomic, weak) LGCubeCell *target;
@end

@implementation LGCubeCellRenderModel

- (void)render:(void (^)(__kindof LGCubeCellRenderModel * _Nonnull))block {
    if (block) {
        block(self);
    }
    if (self.target && [self.target respondsToSelector:@selector(renderCell)]) {
        [self.target renderCell];
    }
}
@end
