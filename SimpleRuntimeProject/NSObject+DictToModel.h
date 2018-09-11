//
//  NSObject+DictToModel.h
//  SimpleRuntimeProject
//
//  Created by 黃秋陽 on 2018/8/1.
//  Copyright © 2018年 黃秋陽. All rights reserved.
//  字典转模型

#import <Foundation/Foundation.h>

@interface NSObject (DictToModel)

+ (instancetype)modelWithDict:(NSDictionary *)dict;

- (NSDictionary *)arrayContainModelClass;

@end
