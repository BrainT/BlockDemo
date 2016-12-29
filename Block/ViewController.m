//
//  ViewController.m
//  Block
//
//  Created by TL on 16/12/29.
//  Copyright © 2016年 TL. All rights reserved.
//
#define QQMUSICURL @"https://www.baidu.com/link?url=UTiLwaXdh_-UZG31tkXPU62Jtsg2mSbZgSPSR3ME3YwOBSe97Hw6U6DNceQ2Ln1vXnb2krx0ezIuziBIuL4fWNi3dZ02t2NdN6946XwN0-a&wd=&eqid=ce6864b50004af120000000656fe235f"

#import "ViewController.h"
#import "DownloadManager.h"
#import "Nurse.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
 
}
- (IBAction)buttonClicked:(id)sender {
   
    //创建出实现方法的那个对象，启动这个委托代理模式
    Nurse * nurse = [[Nurse alloc]init];
    [nurse ICanLookAfterYourChild];
    
    //下载类
    DownloadManager * downloadManager = [[DownloadManager alloc] init];
    [downloadManager downloadWithURL:QQMUSICURL parameters:nil handler:^(NSData *receiveData, NSError *error) {
        if (error) {
            NSLog(@"下载失败：%@",error);
        }else {
            NSLog(@"下载成功，%@",receiveData);
        }
    }];
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
