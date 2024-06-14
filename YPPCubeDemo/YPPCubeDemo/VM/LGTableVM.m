//
//  LGTableVM.m
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2022/2/24.
//
#import "LGFeedCellVM.h"
#import "LGLiveCellVM.h"
#import "LGTopicCellVM.h"
#import "LGTableVM.h"

@implementation LGTableVM
- (instancetype)init {
    if (self = [super init]) {
        [self createData];
    }
    return self;
}

- (void)createData {
    NSArray *arr = @[@"LGFeedCell", @"LGTopicCell", @"LGLiveCell", @"LGFeedCell"];
//    NSArray *arr = @[ @"LGTopicCell", @"LGTopicCell"];

    NSMutableArray *cvms = @[].mutableCopy;
    for (int i = 0; i < 10000; i ++) {
        NSString *cls = arr[arc4random()%arr.count];
        LGCellVM *cvm = nil;
        if ([cls isEqualToString:@"LGFeedCell"]) {
            cvm = [[LGFeedCellVM alloc] init];
        } else if ([cls isEqualToString:@"LGTopicCell"]) {
            cvm = [[LGTopicCellVM alloc] init];
        } else {
            cvm = [[LGLiveCellVM alloc] init];
        }
        cvm.cellCls = cls;
        [cvms addObject:cvm];
    }
    self.cvms = cvms;
}
@end
