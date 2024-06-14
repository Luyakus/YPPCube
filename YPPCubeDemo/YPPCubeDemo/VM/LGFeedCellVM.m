//
//  LGFeedCellVM.m
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2022/2/24.
//
#import "LGFeedCell.h"
#import "LGFeedCellVM.h"
@interface LGFeedCellVM()
@property (nonatomic, strong) NSArray *arr;

@end
@implementation LGFeedCellVM

- (instancetype)init {
    if (self = [super init]) {
        self.arr = @[
            @"这里有一个全局变量x，还有一个局部变量x，就是在过程add2中那个字母x。全局变量x的值一直是9。第一次调用add2过程时，局部的x会被赋值为3，而第二次调用add2时，局部变量x的会被赋值为全局变量x的值，即9。",
            @"Scheme的变量有一定的词法作用域，即它们在程序代码中只对特定范围的代码结构可见。迄今为止我们所见过的全局变量也没有例外的：它们的作用域是整个程序，这也是一种特定的作用范围。",
            @"我们也碰见过一些示例包含局部变量。它们都是lambda过程的参数，当过程被调用时这些变量会被赋值，而它们的作用域仅限于在过程的内部。例如",
            @"并不是一定要显式的创建过程才可以创建局部变量。有个特殊的代码结构let可以创建一列局部变量以便在其结构体中使用:",
        ];
        self.data = self.arr[arc4random()%self.arr.count];;
    }
    return self;
}

- (NSString *)cellCls {
    return @"LGFeedCell";
}

- (NSInteger)cellHeight {
    return UITableViewAutomaticDimension;
}


@end
