#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "FPSView+CPUUsage.h"
#import "FPSView+MemoryUsage.h"
#import "FPSView+Thread.h"
#import "FPSView+ThreadTableView.h"
#import "FPSView+TraceLogger.h"
#import "FPSView.h"
#import "FPSViewManager.h"
#import "TraceLogger.h"
#import "YYWeakProxy.h"

FOUNDATION_EXPORT double FPSViewVersionNumber;
FOUNDATION_EXPORT const unsigned char FPSViewVersionString[];

