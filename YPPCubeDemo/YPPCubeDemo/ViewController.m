//
//  ViewController.m
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2021/9/1.
//
#import <Masonry.h>
#import "LGCubeCell.h"
#import "LGTableVM.h"
#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tb;
@property (nonatomic, strong) LGTableVM *vm;

@end

@implementation ViewController

- (instancetype)init {
    if (self = [super init]) {
        self.vm = [[LGTableVM alloc] init];
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
    LGCellVM *cvm = [self.vm.cvms objectAtIndex:indexPath.row];
    LGCubeCell *cell = [tableView dequeueReusableCellWithIdentifier:cvm.cellCls];
    [cell.renderModel render:^(__kindof LGCubeCellRenderModel * _Nonnull model) {
        model.tableView = tableView;
        model.indexPath = indexPath;
        model.data = cvm.data;
    }];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.vm.cvms.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    LGCellVM *cvm = [self.vm.cvms objectAtIndex:indexPath.row];
    return cvm.cellHeight;
}

#pragma mark - 准备工作
- (void)setupViews {
    self.title = @"Cube";
    self.view.backgroundColor = UIColor.greenColor;
    [self.view addSubview:self.tb];
    [self.tb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

- (void)registCell {
    [self.vm.cvms enumerateObjectsUsingBlock:^(LGCellVM * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [self.tb registerClass:NSClassFromString(obj.cellCls) forCellReuseIdentifier:obj.cellCls];
    }];
}

- (UITableView *)tb {
    if (_tb) return _tb;
    _tb = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    _tb.delegate = self;
    _tb.dataSource = self;
    _tb.estimatedRowHeight = 100;
    _tb.rowHeight = UITableViewAutomaticDimension;
    _tb.showsVerticalScrollIndicator = NO;
    return _tb;
}

@end
