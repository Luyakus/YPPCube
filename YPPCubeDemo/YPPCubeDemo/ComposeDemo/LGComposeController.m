//
//  LGComposeController.m
//  YPPCubeDemo
//
//  Created by abc on 2024/6/17.
//
#import "LGComposeAxis.h"
#import "LGComposeController.h"

@interface LGComposeController ()
@property (nonatomic, strong) YPPAxis *axis;
@end

@implementation LGComposeController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden = YES;
    self.view.backgroundColor = UIColor.whiteColor;
    self.axis = [[LGComposeAxis alloc] initWithData:nil];
    [self.axis setupView:self.view];
    [self.axis callOnload];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.axis callOnAppear];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [self.axis callOnDisappear];
}


@end
