//
//  ViewController.h
//  Block
//
//  Created by TL on 16/12/29.
//  Copyright © 2016年 TL. All rights reserved.

#import "Nurse.h"

@implementation Nurse

-(void)ICanLookAfterYourChild
{
    Mother * mother = [[Mother alloc]init];
    //这个是说self愿意接受这个mother的协议
    mother.delegate = self;
    
   __block int val = 0;
    mother.stateBlock = ^ NSString *(NSString * state){
        
        NSLog(@"%@,既然状态很好，请付清工资！",state);
        val = 1;
        return state;
    };
    [mother goOut];
    
}

#pragma mark - 这个是要实现的协议方法
-(void)lookAfterMyChild:(NSString *)state
{
    NSLog(@"我没有让孩子受一点点伤害，拿到的状态：%@",state);
    
}

@end
