//
//  DynamicAddMethods.m
//  SimpleRuntimeProject
//
//  Created by 黃秋陽 on 2018/7/24.
//  Copyright © 2018年 黃秋陽. All rights reserved.
//  动态添加方法

#import "DynamicAddMethods.h"
#import <objc/message.h>

void dynamicMethodIMP(id self, SEL _cmd)
{
    NSLog(@"%@ add %@ successful", self, NSStringFromSelector(_cmd));
}

@implementation DynamicAddMethods

// 当一个对象调用未实现的方法，会调用这个方法处理,并且会把对应的方法列表传过来.
// 刚好可以用来判断，未实现的方法是不是我们想要动态添加的方法
+ (BOOL) resolveInstanceMethod:(SEL)aSEL
{
    if (aSEL == @selector(resolveThisMethodDynamically))
    {
        // 动态添加eat方法
        
        // 第一个参数：给哪个类添加方法
        // 第二个参数：添加方法的方法编号
        // 第三个参数：添加方法的函数实现（函数地址）
        // 第四个参数：函数的类型，(返回值+参数类型) v:void @:对象->self :表示SEL->_cmd
        class_addMethod([self class], aSEL, (IMP) dynamicMethodIMP, "v@:");
        return YES;
    }
    return [super resolveInstanceMethod:aSEL];
}


@end
