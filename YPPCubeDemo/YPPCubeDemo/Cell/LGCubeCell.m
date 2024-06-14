//
//  LGCubeCell.m
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2022/2/24.
//
#import <Masonry.h>
#import "LGCubeCell.h"
#import "YPPCube+Private.h"
@interface LGCubeCell()
@property (nonatomic, strong) YPPCube *cube;
@property (nonatomic, strong) LGCubeCellRenderModel *renderModel;
@end

@interface LGCubeCellRenderModel()
@property (nonatomic, weak) LGCubeCell *target;
@end

@implementation LGCubeCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.cube = [self cententCube];
        [self.cube setupView:self.contentView];
        [self.contentView layoutIfNeeded];
        self.renderModel = [[LGCubeCellRenderModel alloc] init];
        self.renderModel.target = self;
        static NSInteger count = 0;
        NSLog(@"----%@", @(++count));
    }
    return self;
}

- (void)renderCell {
    __weak typeof(self)ws = self;
    NSIndexPath *indexPath = self.renderModel.indexPath;
    self.cube.reloadAciton = ^{
        [ws.renderModel.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
    };
    [self bind:self.renderModel.data];
}

- (void)bind:(id)data {
    [self.cube fillData:data];
    [self.contentView setNeedsLayout];
}

- (YPPCube *)cententCube {
    return [[YPPCube alloc] initWithData:nil];
}
@end
