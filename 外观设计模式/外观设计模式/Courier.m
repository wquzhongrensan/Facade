//
//  Courier.m
//  外观设计模式
//
//  Created by duoyi on 2018/7/11.
//  Copyright © 2018年 panfuTech. All rights reserved.
//

#import "Courier.h"
#import "Truck.h"
#import "RefrigeratedTruck.h"
#import "RefreshKeeping.h"

@interface Courier ()
{
    Truck *truck;
    RefrigeratedTruck *refrigeratedCar;
    RefreshKeeping *refreshKeeper;
}
@end

@implementation Courier
- (instancetype)init{
    if (self = [super init]) {
        truck = [Truck new];
        refrigeratedCar = [RefrigeratedTruck new];
        refreshKeeper = [RefreshKeeping new];
    }
    return self;
}

// 寄送普通快递
- (void)deliveryOrdinaryExpress{
    // 上门收件
    [self collect];
    // 货车运输
    [truck transport];
    // 通知收件者
    [self notifyReceiver];
}

// 寄送水果类(需要保鲜处理)
- (void)deliveryFruit{
    // 上门收件
    [self collect];
    //特殊保鲜处理
    [refreshKeeper keepRefresh];
    // 冷藏车运输
    [refrigeratedCar transportRefrigerated];
    // 通知收件者
    [self notifyReceiver];
}

- (void) collect{
    NSLog(@"上门收件");
}

- (void)notifyReceiver{
    NSLog(@"通知收件人");
}
@end
