//
//  NSObject+MSDeallocCallBack.h
//  DeallocCallback
//
//  Created by J on 2017/6/17.
//  Copyright © 2017年 J. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^DeallocExecutorBlock)(void);
#define WEAKSELF     __weak typeof(self) weakSelf = self;
@interface NSObject (MSDeallocCallBack)

- (void)deallocCallBack:(DeallocExecutorBlock)block;

@end
