//
//  LGVGroupController.m
//  YPPCubeDemo
//
//  Created by abc on 2024/6/14.
//
#import <YPPCube/YPPAxis.h>
#import "LGVGroupAxis.h"
#import "LGVGroupController.h"

@interface LGVGroupController ()
@property (nonatomic, strong) YPPAxis *axis;

@end

@implementation LGVGroupController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    self.axis = [[LGVGroupAxis alloc] initWithData:nil];
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
