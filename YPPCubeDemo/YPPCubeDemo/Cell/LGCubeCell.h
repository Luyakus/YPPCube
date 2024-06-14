//
//  LGCubeCell.h
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2022/2/24.
//
#import "LGCubeCellRenderModel.h"
#import <YPPCube/YPPCube.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LGCubeCell : UITableViewCell
@property (nonatomic, readonly) LGCubeCellRenderModel *renderModel; // 使用 renderModel 的 render: 更新cell
@property (nonatomic, strong) YPPCube *contentCube;

- (YPPCube *)cententCube;
// overwrite, 不要在 tableView 代理方法中直接调用此方法更新cell
- (void)bind:(id)data NS_REQUIRES_SUPER;
@end

NS_ASSUME_NONNULL_END
