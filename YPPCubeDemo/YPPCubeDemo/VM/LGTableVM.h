//
//  LGTableVM.h
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2022/2/24.
//
#import "LGCellVM.h"
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LGTableVM : NSObject
@property (nonatomic, strong) NSArray <LGCellVM *> *cvms;

@end

NS_ASSUME_NONNULL_END
