//
//  LGChatCube.m
//  YPPCubeDemo
//
//  Created by abc on 2024/6/17.
//
#import <Masonry.h>
#import <YYKeyboardManager.h>
#import "LGEventBus.h"
#import "NSObject+EventBus.h"
#import "LGChatCube.h"

@interface LGChatCube() <UITableViewDataSource, YYKeyboardObserver>
@property (nonatomic, strong) NSMutableArray *messages;
@property (nonatomic, strong) UITableView *tb;

@end

@implementation LGChatCube


- (instancetype)initWithData:(id)data {
    if (self = [super initWithData:data]) {
        self.messages = @[].mutableCopy;
        [self registEventBus:LGEventBus.eventBus];
    }
    return self;
}

- (void)setupView:(UIView *)view {
    [super setupView:view];
    view.backgroundColor = UIColor.systemPinkColor;
    UILabel *label = [UILabel new];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"信息流";
    [view addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.bottom.equalTo(view);
    }];
        
    [view addSubview:self.tb];
    [self.tb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.bottom.equalTo(view);
    }];
    
}


- (BOOL)canHandleMessage:(__kindof YPPEventMessage *)message {
    if ([message.identifier isEqualToString:LGInputReturnMessage]) {
        return YES;
    }
    return NO;
}

- (void)handleMessage:(__kindof YPPEventMessage *)message {
    [self.messages addObject:message.data];
    [self.tb reloadData];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.numberOfLines = 0;
    cell.textLabel.text = self.messages[indexPath.row];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.messages.count;
}


- (UITableView *)tb {
    if (_tb) return _tb;
    _tb = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    [_tb registerClass:UITableViewCell.class forCellReuseIdentifier:@"cell"];
    _tb.backgroundColor = UIColor.clearColor;
    _tb.dataSource = self;
    _tb.showsVerticalScrollIndicator = NO;
    _tb.estimatedRowHeight = 100;
    _tb.rowHeight = UITableViewAutomaticDimension;
    return _tb;
}




@end
