//
//  LGCubeCellRenderModel.h
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2022/2/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LGCubeCellRenderModel : NSObject
@property (nonatomic, strong) NSIndexPath *indexPath;
@property (nonatomic, weak) UITableView *tableView;
@property (nonatomic, strong) id data;

- (void)render:(void(^)(__kindof LGCubeCellRenderModel *model))block;
@end

NS_ASSUME_NONNULL_END
