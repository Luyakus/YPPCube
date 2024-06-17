//
//  LGEventBus.m
//  YPPCubeDemo
//
//  Created by abc on 2024/6/17.
//

#import "LGEventBus.h"

NSString *LGInputClickMessage = @"LGInputClickMessage";
NSString *LGInputReturnMessage = @"LGInputReturnMessage";

@implementation LGEventBus
+ (instancetype)eventBus {
    static LGEventBus *bus = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        bus = [[LGEventBus alloc] init];
    });
    return bus;
}
@end
