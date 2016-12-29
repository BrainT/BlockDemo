//
//  DownloadManager.m
//  考试三代理
//
//  Created by TL on 16/12/29.
//  Copyright © 2016年 1000phone. All rights reserved.
//

#import "DownloadManager.h"

@interface DownloadManager ()<NSURLSessionDownloadDelegate>

@end

@implementation DownloadManager

- (void)downloadWithURL:(NSString *)URL parameters:(NSDictionary *)parameters handler:(DownloadHandler)handler
{
    NSURLRequest * request = [NSURLRequest requestWithURL:[NSURL URLWithString:URL]];
    NSURLSession * session = [NSURLSession sharedSession];

    //执行请求任务
    NSURLSessionDataTask * task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (handler) {
            dispatch_async(dispatch_get_main_queue(), ^{
                handler(data,error);
            });
        }
    }];
    [task resume];
    
}
- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location
{

}

@end
