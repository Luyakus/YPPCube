//
//  LGLiveCell.m
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2022/2/24.
//
#import "LGLiveCube.h"
#import "LGLiveCell.h"

@implementation LGLiveCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (YPPCube *)cententCube {
    return [[LGLiveCube alloc] initWithData:nil];
}


@end
