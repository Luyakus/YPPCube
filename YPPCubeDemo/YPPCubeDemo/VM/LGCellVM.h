//
//  LGCellVM.h
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2022/2/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LGCellVM : NSObject
@property (nonatomic, copy) NSString *cellCls;
@property (nonatomic, assign) NSInteger cellHeight;
@property (nonatomic, strong) id data;
@end

NS_ASSUME_NONNULL_END
