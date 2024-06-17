//
//  ViewController.m
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2021/9/1.
//
#import <Masonry.h>
#import "ViewController.h"
#import "LGVGroupController.h"
#import "LGHGroupController.h"
#import "LGZGroupController.h"
#import "LGComposeController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) NSArray <NSDictionary <NSString *, Class> *> *demos;
@property (nonatomic, strong) UITableView *tb;

@end

@implementation ViewController

- (instancetype)init {
    if (self = [super init]) {
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupViews];
    [self registCell];
    [self.tb reloadData];
}
#pragma mark - 代理
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = self.demos[indexPath.row].allKeys.firstObject;
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.demos.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *vc = [self.demos[indexPath.row].allValues.firstObject new];
    vc.edgesForExtendedLayout = UIRectEdgeNone;
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - 准备工作
- (void)setupViews {
    self.title = @"Cube";
    self.view.backgroundColor = UIColor.whiteColor;
    self.demos = @[
        @{@"竖向布局": LGVGroupController.class},
        @{@"横向布局": LGHGroupController.class},
        @{@"Z向布局": LGZGroupController.class},
        @{@"综合布局": LGComposeController.class}
    ];
    [self.view addSubview:self.tb];
    [self.tb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
}

- (void)registCell {
    [self.tb registerClass:UITableViewCell.class forCellReuseIdentifier:@"cell"];
}

- (UITableView *)tb {
    if (_tb) return _tb;
    _tb = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    _tb.delegate = self;
    _tb.dataSource = self;
    _tb.showsVerticalScrollIndicator = NO;
    return _tb;
}

@end
