//
//  ViewController.m
//  SimpleRuntimeProject
//
//  Created by 黃秋陽 on 2018/7/24.
//  Copyright © 2018年 黃秋陽. All rights reserved.
//

#import "ViewController.h"
#import "DynamicAddMethods.h"
#import <objc/message.h>
#import "UIImage+Category.h"
#import "Person.h"


@interface ViewController ()

@property (nonatomic, strong) DynamicAddMethods *model;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    交换方法实现
//    UIImage *image = [UIImage imageNamed:@""];

//    动态添加方法
//    DynamicAddMethods *dmethod = [[DynamicAddMethods alloc]init];
//    [dmethod performSelector:@selector(resolveThisMethodDynamically)];
    
//    分类中添加属性
//    UIImage *image = [[UIImage alloc]init];
//    image.newProperty = @"123456";
//    NSLog(@"%@", image.newProperty);
    
//    获取指定类的所有属性类型名并处理掉多余的符号
//    unsigned int count;
//    Ivar *ivars = class_copyIvarList([Person class], &count);
//    NSInteger nCount = (NSInteger)count;
//    NSString *type;
//    NSMutableArray *mutableArray = [NSMutableArray array];
//    for (NSInteger i = 0; i < nCount; i ++) {
//        type = [NSString stringWithUTF8String:ivar_getTypeEncoding(ivars[i])];
//        [mutableArray addObject:type];
//    }
//    for (NSInteger i = 0; i < mutableArray.count; i ++) {
//        NSString *typeStr = mutableArray[i];
//        NSRange range = [typeStr rangeOfString:@"\""];
//        //    从index开始取到最后
//        typeStr = [typeStr substringFromIndex:range.location + range.length];
//        range = [typeStr rangeOfString:@"\""];
//        //    裁剪到哪个角标，不包括当前角标(从开始取到index)
//        typeStr = [typeStr substringToIndex:range.location];
//        [mutableArray replaceObjectAtIndex:i withObject:typeStr];
//    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
