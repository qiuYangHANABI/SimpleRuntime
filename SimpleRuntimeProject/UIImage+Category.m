//
//  UIImage+Category.m
//  SimpleRuntimeProject
//
//  Created by 黃秋陽 on 2018/7/24.
//  Copyright © 2018年 黃秋陽. All rights reserved.
//  runtime -- 交换方法实现&添加属性

#import "UIImage+Category.h"
#import <objc/message.h>

static const char *key = "newProperty";

@implementation UIImage (Category)

- (void)setNewProperty:(NSString *)newProperty{
    // 第一个参数：给哪个对象添加关联
    // 第二个参数：关联的key，通过这个key获取
    // 第三个参数：关联的value
    // 第四个参数:关联的策略
    objc_setAssociatedObject(self, key, newProperty, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (NSString *)newProperty{
    //在self根据key获取对应的关联属性
    return objc_getAssociatedObject(self, key);
}

+ (void)load{
    
    Method imageWithName = class_getClassMethod(self, @selector(imageWithName:));
    Method imageName = class_getClassMethod(self, @selector(imageNamed:));
    method_exchangeImplementations(imageWithName, imageName);
}
+ (instancetype)imageWithName:(NSString *)imageName{
    //相当于调用imageNamed
    UIImage *image = [self imageWithName:imageName];
    if (image == nil) {
        NSLog(@"there has no image");
    }
    return image;
}

@end
