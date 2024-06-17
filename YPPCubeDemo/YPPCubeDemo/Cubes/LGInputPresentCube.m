//
//  LGInputPresentCube.m
//  YPPCubeDemo
//
//  Created by abc on 2024/6/17.
//
#import <Masonry.h>
#import "LGInputPresentCube.h"
#import "LGEventBus.h"
#import "NSObject+EventBus.h"
#import "YPPCube+Private.h"
#import <YYKeyboardManager.h>

@interface LGInputPresentCube() <YYKeyboardObserver, UITextFieldDelegate>
@property (nonatomic, strong) UIView *keyboardView;
@property (nonatomic, strong) UITextField *input;

@end
@implementation LGInputPresentCube

- (void)dealloc {
    id s = self;
    [[YYKeyboardManager defaultManager] removeObserver:s];
}

- (instancetype)initWithData:(id)data {
    if (self = [super initWithData:data]) {
        [[YYKeyboardManager defaultManager] addObserver:self];
        [self registEventBus:LGEventBus.eventBus];
    }
    return self;
}

- (void)setupView:(UIView *)view {
    [super setupView:view];
    view.hidden = YES;
    UIButton *b = [UIButton buttonWithType:UIButtonTypeSystem];
    [view addSubview:b];
    [b mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.bottom.equalTo(view);
    }];
    [b addTarget:self action:@selector(backgroundClick) forControlEvents:UIControlEventTouchUpInside];
    self.keyboardView = [UIView new];
    [view addSubview:self.keyboardView];
    [self.keyboardView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.left.right.equalTo(view);
        make.height.mas_equalTo(0);
    }];
    UIView *inputHolder = [UIView new];
    inputHolder.backgroundColor = UIColor.whiteColor;
    self.input = [[UITextField alloc] initWithFrame:CGRectZero];
    self.input.delegate = self;
    self.input.returnKeyType = UIReturnKeyDone;
    self.input.layer.borderColor = UIColor.grayColor.CGColor;
    self.input.layer.cornerRadius = 8;
    self.input.layer.borderWidth = 1;
    [inputHolder addSubview:self.input];
    [self.input mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(inputHolder).offset(20);
        make.right.equalTo(inputHolder).offset(-20);
        make.top.equalTo(inputHolder).offset(8);
        make.bottom.equalTo(inputHolder).offset(-8);
    }];
    [view addSubview:inputHolder];
    [inputHolder mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(60);
        make.left.right.equalTo(view);
        make.bottom.equalTo(self.keyboardView.mas_top);
    }];
}

- (BOOL)canHandleMessage:(__kindof YPPEventMessage *)message {
    if ([message.identifier isEqualToString:LGInputClickMessage]) {
        return YES;
    }
    return NO;
}

- (void)handleMessage:(__kindof YPPEventMessage *)message {
    self.superView.hidden = NO;
    [self.input becomeFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    YPPEventMessage *m = [YPPEventMessage new];
    m.identifier = LGInputReturnMessage;
    m.data = textField.text;
    [LGEventBus.eventBus dispatchMessage:m];
//    textField.text = nil;
    [textField resignFirstResponder];
    return YES;
}


- (void)backgroundClick {
    [self.input resignFirstResponder];
}

- (void)keyboardChangedWithTransition:(YYKeyboardTransition)transition {
    NSLog(@"%@-%@", @(transition.fromFrame), @(transition.toFrame));
    CGFloat height = UIScreen.mainScreen.bounds.size.height - transition.toFrame.origin.y;
    [self.keyboardView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(height);
    }];
    [UIView animateWithDuration:transition.animationDuration animations:^{
        [self.keyboardView layoutIfNeeded];
    } completion:^(BOOL finished) {
        if (height <= 10) {
            self.superView.hidden = YES;
        }
    }];
}



@end
