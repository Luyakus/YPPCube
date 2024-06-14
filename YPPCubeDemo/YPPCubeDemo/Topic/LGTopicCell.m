//
//  LGTopicCell.m
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2022/2/24.
//
#import "LGTopicCube.h"
#import "LGTopicCell.h"

@implementation LGTopicCell

- (void)prepareForReuse {
    [super prepareForReuse];
    
}

- (YPPCube *)cententCube {
    return [[LGTopicCube alloc] initWithData:nil];
}


@end
