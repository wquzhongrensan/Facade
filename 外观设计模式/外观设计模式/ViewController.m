//
//  ViewController.m
//  外观设计模式
//
//  Created by duoyi on 2018/7/11.
//  Copyright © 2018年 panfuTech. All rights reserved.
//

#import "ViewController.h"
#import "Courier.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)sendbooks:(id)sender {
    [self expressBooks];
}

- (IBAction)sendfrute:(id)sender {
    [self expressFruit];
}

- (void)expressBooks {
    NSLog(@"寄书本快递");
    Courier *courier = [[Courier alloc] init];
    [courier deliveryOrdinaryExpress];
}

- (void)expressFruit{
    NSLog(@"寄水果");
    Courier *courier = [[Courier alloc] init];
    [courier deliveryFruit];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
