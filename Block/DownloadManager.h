//
//  DownloadManager.h
//  考试三代理
//
//  Created by TL on 16/12/29.
//  Copyright © 2016年 1000phone. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DownloadManager : NSObject 

// block 重命名
typedef void (^DownloadHandler)(NSData * receiveData, NSError * error);

- (void)downloadWithURL:(NSString *)URL parameters:(NSDictionary *)parameters handler:(DownloadHandler)handler ;

@end
