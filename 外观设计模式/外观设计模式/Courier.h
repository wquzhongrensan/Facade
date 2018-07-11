//
//  Courier.h
//  外观设计模式
//
//  Created by duoyi on 2018/7/11.
//  Copyright © 2018年 panfuTech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Courier : NSObject

// 寄送普通快递
- (void)deliveryOrdinaryExpress;

// 寄送水果类(需要保鲜处理)
- (void)deliveryFruit;

@end
