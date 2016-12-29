//
//  ViewController.h
//  Block
//
//  Created by TL on 16/12/29.
//  Copyright © 2016年 TL. All rights reserved.
//

/*
 
 Mother【委托方】   有照顾孩子的需求，但不会照顾孩子
 Nurse(保姆)【代理方】  具备照顾孩子的能力，但不知道什么时候照顾
 */

/*
 
 委托代理的精髓是实现对象之间的[消息传递]，擅长反向传递消息（所谓反向是和函数调用时压栈的顺序想法），既然是消息那么就具备消息的所有特性，消息可以传递出一个时机（没有参数的方法），可以有参数，可以有返回值
 
 只要记住以下几点就没问题
 1、那个对象（A）想往外传递消息那么它就声明协议，创建id类型的属性，当需要往外传递消息的时候，通过id指针去调用协议里的方法就行了。这样这个对象（A）跟协议有关的操作就完成了
 
 2、那个对象(B)接受协议，就要在自己的方法内创建出想发送消息的那个对象（A），对那个对象（A）的id类型的属性赋值为self（这个表示你接受协议），调用那个对象（A）想传递消息的方法。然后实现协议就ok了
 
 */


#import <Foundation/Foundation.h>
#import "MotherProtocl.h"

//@protocol MotherDelegate <NSObject>
//
//-(void)lookAfterMyChild:(NSString *)state;
//
//@end

typedef NSString * (^StateBlock)(NSString * S);

@interface Mother : NSObject

@property (nonatomic,copy) void (^myBlock)(NSString * data);

@property (nonatomic,weak) id<MotherProtocl> delegate;

-(void)goOut;
/* 利用block传值 */
//@property (nonatomic,copy) NSString * (^stateBlock)(NSString * S);

@property (nonatomic,copy) StateBlock stateBlock;

@end
