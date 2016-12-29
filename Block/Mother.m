//
//  ViewController.h
//  Block
//
//  Created by TL on 16/12/29.
//  Copyright © 2016年 TL. All rights reserved.
//

#import "Mother.h"

@implementation Mother
-(void)goOut
{
    [self.delegate lookAfterMyChild:@"bad or good?(用这个状态，你可以做一些操作)"];
    
//    NSLog(@"孩子的状态是 good or bad");
    //判断block是否存在
    if (self.stateBlock) {
        self.stateBlock(@"good");
    }
    
}
@end
