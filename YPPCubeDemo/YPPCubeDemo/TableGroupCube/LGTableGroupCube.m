//
//  LGTableGroupCube.m
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2022/2/23.
//
#import "LGLiveCube.h"
#import "LGTopicCube.h"
#import "LGFeedCube.h"

#import "LGTableGroupCube.h"
@interface LGTableGroupCube()
@property (nonatomic, strong) NSArray *textArr;
@property (nonatomic, strong) NSMutableArray *dataArr;

@end
@implementation LGTableGroupCube
- (void)setupView:(UIView *)view {
    [super setupView:view];
    self.textArr = @[
        @"Lisp 是第一个可以在程序的任何位置定义函数，并且可以把函数作为值传递的语言。这样的设计使得它的表达能力非常强大。这种理念被 Python，JavaScript，Ruby 等语言所借鉴",
        @"Lisp 有世界上最强大的宏系统（macro system）",
        @"Lisp 是世界上第一个使用垃圾回收（garbage collection）的语言。这种超前的理念，后来被 Java，C# 等语言借鉴。"
    ];
    self.dataArr = @[].mutableCopy;
    
    NSArray *arr = @[@"feed"];
    for (int i = 0; i < 15; i ++) {
        [self.dataArr addObject:@"feed"];
        
    }
    [self reload];
}


- (NSInteger)cubeCount {
    return self.dataArr.count;
}

- (YPPCube *)createCubeAtIndex:(NSInteger)index {
    NSString *identifier = self.dataArr[index];
    if ([identifier isEqualToString:@"live"]) {
        return [[LGLiveCube alloc] initWithData:nil];
    } else if ([identifier isEqualToString:@"feed"]) {
        return [[LGFeedCube alloc] initWithData:nil];
    } else {
        return [[LGTopicCube alloc] initWithData:nil];;
    }
}

- (NSString *)cubeIdentiferAtIndex:(NSInteger)index {
    NSString *identifier = self.dataArr[index];
    return identifier;
}

- (void)updateCube:(YPPCube *)cube AtIndex:(NSInteger)index {
    if ([cube isKindOfClass:LGFeedCube.class]) {
        [cube fillData:self.textArr[index % 3]];
    }
}
@end
