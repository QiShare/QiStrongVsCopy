//
//  ViewController.m
//  QiStrongVsCopy
//
//  Created by QiShare on 2018/7/29.
//  Copyright © 2018年 QiShare. All rights reserved.
//  简书地址：https://www.jianshu.com/u/3db23baa08c7

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 第一种场景：用NSString直接赋值
    NSString *originStr1 = [NSString stringWithFormat:@"hello,everyone"];
    
    _strongStr = originStr1;
    _copyyStr = originStr1;
    
    NSLog(@"第一种场景：用NSString直接赋值");
    NSLog(@"               对象地址         对象指针地址        对象的值   ");
    NSLog(@"originStr: %p , %p , %@", originStr1, &originStr1, originStr1);
    NSLog(@"strongStr: %p , %p , %@", _strongStr, &_strongStr, _strongStr);
    NSLog(@" copyyStr: %p , %p , %@", _copyyStr, &_copyyStr, _copyyStr);
    
    NSLog(@"");
    NSLog(@"-----------------QiShare分割线---------------------");
    
    
    // 第二种场景：用NSMutableString直接赋值
    NSMutableString *originStr2 = [NSMutableString stringWithFormat:@"hello,everyone"];
    
    _strongStr = originStr2;
    _copyyStr = originStr2;
    
    [originStr2 setString:@"hello,QiShare"];
    
    NSLog(@"第二种场景：用NSMutableString直接赋值");
    NSLog(@"               对象地址         对象指针地址        对象的值   ");
    NSLog(@"originStr: %p , %p , %@", originStr2, &originStr2, originStr2);
    NSLog(@"strongStr: %p , %p , %@", _strongStr, &_strongStr, _strongStr);
    NSLog(@" copyyStr: %p , %p , %@", _copyyStr, &_copyyStr, _copyyStr);
    
    NSLog(@"");
    NSLog(@"-----------------QiShare分割线---------------------");
    
    
    // 第三种场景：用NSMutableString点语法赋值
    NSMutableString *originStr3 = [NSMutableString stringWithFormat:@"hello,everyone"];
    
    self.strongStr = originStr3;
    self.copyyStr = originStr3;
    
    [originStr3 setString:@"hello,QiShare"];
    
    NSLog(@"第三种场景：用NSMutableString点语法赋值");
    NSLog(@"               对象地址         对象指针地址        对象的值   ");
    NSLog(@"originStr: %p , %p , %@", originStr3, &originStr3, originStr3);
    NSLog(@"strongStr: %p , %p , %@", _strongStr, &_strongStr, _strongStr);
    NSLog(@" copyyStr: %p , %p , %@", _copyyStr, &_copyyStr, _copyyStr);
    
    NSLog(@"");
    NSLog(@"-----------------QiShare分割线---------------------");
    
    // 第四种场景：用NSString点语法赋值
    NSString *originStr4 = [NSString stringWithFormat:@"hello,everyone"];
    
    self.strongStr = originStr4;
    self.copyyStr = originStr4;
    
    NSLog(@"第四种场景：用NSString点语法赋值");
    NSLog(@"               对象地址         对象指针地址        对象的值   ");
    NSLog(@"originStr: %p , %p , %@", originStr4, &originStr4, originStr4);
    NSLog(@"strongStr: %p , %p , %@", _strongStr, &_strongStr, _strongStr);
    NSLog(@" copyyStr: %p , %p , %@", _copyyStr, &_copyyStr, _copyyStr);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
