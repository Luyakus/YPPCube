//
//  LGEventBus.h
//  YPPCubeDemo
//
//  Created by abc on 2024/6/17.
//

#import <YPPCube/YPPEventBus.h>
#import <YPPCube/YPPEventMessage.h>
NS_ASSUME_NONNULL_BEGIN

FOUNDATION_EXPORT NSString *LGInputClickMessage;
FOUNDATION_EXPORT NSString *LGInputReturnMessage;


@interface LGEventBus : YPPEventBus
+ (instancetype)eventBus;
@end

NS_ASSUME_NONNULL_END
