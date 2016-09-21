//
//  ViewController.m
//  MezhodSwizzling
//
//  Created by JBWL on 16/9/21.
//  Copyright © 2016年 JBWL. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>


@interface ViewController ()

@end

@implementation ViewController

+ (void)load {
    [super load];
    //    参考网址： http://www.cocoachina.com/ios/20150717/12623.html
    
    /*
     //    Method 1
     static dispatch_once_t onceToken;
     dispatch_once(&onceToken, ^{
     //获取到这个类的 ViewDidLoad 方法，他的类型是一个 objc_mezhod 结构体的指针
     Method viewDidLoad = class_getInstanceMethod(self, @selector(viewDidLoad));
     //获取这个类中 ViewDidLoad 替代品方法，同上
     Method viewDidLoadSubstitute = class_getInstanceMethod(self, @selector(viewDidLoadSubstitute));
     //使 viewDidLoad 方法和 viewDidLoadSubstitute 方法替换
     method_exchangeImplementations(viewDidLoad, viewDidLoadSubstitute);
     
     });
     */
    
    
    
}



- (void)viewDidLoadSubstitute {
    NSLog(@"-----------------------------------%s",__FUNCTION__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"-----------------------------------%s",__FUNCTION__);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
