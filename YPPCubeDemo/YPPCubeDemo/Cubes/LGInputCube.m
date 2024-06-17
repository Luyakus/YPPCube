//
//  LGInputCube.m
//  YPPCubeDemo
//
//  Created by abc on 2024/6/17.
//
#import <Masonry.h>
#import "LGEventBus.h"
#import "LGInputCube.h"

@implementation LGInputCube

- (void)setupView:(UIView *)view {
    [super setupView:view];
    UIButton *b = [UIButton buttonWithType:UIButtonTypeSystem];
    b.layer.borderWidth = 1;
    b.layer.borderColor = UIColor.grayColor.CGColor;
    b.layer.cornerRadius = 8;
    [view addSubview:b];
    [b mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(view).offset(30);
        make.right.equalTo(view).offset(-30);
        make.top.equalTo(view).offset(8);
        make.bottom.equalTo(view).offset(-8);
    }];
    [b addTarget:self action:@selector(inputClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)inputClick {
    YPPEventMessage *m = [YPPEventMessage new];
    m.identifier = LGInputClickMessage;
    [LGEventBus.eventBus dispatchMessage:m];
}

- (CGFloat)cubeHeight {
    return 60;
}

@end
