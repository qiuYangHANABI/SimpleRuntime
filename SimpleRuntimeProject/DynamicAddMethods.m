//
//  DynamicAddMethods.m
//  SimpleRuntimeProject
//
//  Created by 黃秋陽 on 2018/7/24.
//  Copyright © 2018年 黃秋陽. All rights reserved.
//

#import "DynamicAddMethods.h"
#import <objc/message.h>

void dynamicMethodIMP(id self, SEL _cmd)
{
    NSLog(@"%@ add %@ successful", self, NSStringFromSelector(_cmd));
}

@implementation DynamicAddMethods

+ (BOOL) resolveInstanceMethod:(SEL)aSEL
{
    if (aSEL == @selector(resolveThisMethodDynamically))
    {
        class_addMethod([self class], aSEL, (IMP) dynamicMethodIMP, "v@:");
        return YES;
    }
    return [super resolveInstanceMethod:aSEL];
}


@end
