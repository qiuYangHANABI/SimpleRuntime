//
//  Person.h
//  SimpleRuntimeProject
//
//  Created by 黃秋陽 on 2018/9/11.
//  Copyright © 2018年 黃秋陽. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSMutableString *age;
@property (nonatomic, copy) NSMutableArray *members;
@property (nonatomic, copy) NSMutableDictionary *weight;

@end
