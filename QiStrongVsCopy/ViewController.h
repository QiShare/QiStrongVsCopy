//
//  ViewController.h
//  QiStrongVsCopy
//
//  Created by QiShare on 2018/7/29.
//  Copyright © 2018年 QiShare. All rights reserved.
//  简书地址：https://www.jianshu.com/u/3db23baa08c7

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic, strong) NSString *strongStr;
@property(nonatomic, copy) NSString *copyyStr;
// 注：不能以alloc，new，copy，mutableCopy 作为开头命名，比如：copyStr

@end

