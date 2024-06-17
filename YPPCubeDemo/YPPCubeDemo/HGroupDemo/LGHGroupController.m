//
//  LGHGroupController.m
//  YPPCubeDemo
//
//  Created by abc on 2024/6/17.
//
#import "LGHGroupAxis.h"
#import "LGHGroupController.h"

@interface LGHGroupController ()

@property (nonatomic, strong) YPPAxis *axis;

@end

@implementation LGHGroupController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    self.axis = [[LGHGroupAxis alloc] initWithData:nil];
    [self.axis setupView:self.view];
    [self.axis callOnload];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.axis callOnAppear];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [self.axis callOnDisappear];
}
@end
