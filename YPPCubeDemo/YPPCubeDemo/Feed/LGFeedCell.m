//
//  LGFeedCell.m
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2022/2/24.
//
#import "LGFeedCube.h"
#import "LGFeedCell.h"

@implementation LGFeedCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}


- (YPPCube *)cententCube {
    return [[LGFeedCube alloc] initWithData:nil];
}

@end
