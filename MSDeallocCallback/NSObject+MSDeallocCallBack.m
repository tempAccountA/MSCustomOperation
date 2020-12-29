//
//  NSObject+MSDeallocCallBack.m
//  DeallocCallback
//
//  Created by J on 2017/6/17.
//  Copyright © 2017年 J. All rights reserved.
//



#import "NSObject+MSDeallocCallBack.h"
#import <objc/message.h>

const void *kDeallocExecutorsKey = &kDeallocExecutorsKey;
const void *kBlockKey            = &kBlockKey;

@interface CallBackItem : NSObject

@end
@implementation NSObject (MSDeallocCallBack)

- (void)deallocCallBack:(DeallocExecutorBlock)block{
    
    
    if (!block) return;
    
        CallBackItem* obj = [CallBackItem new];
        objc_setAssociatedObject(self, kDeallocExecutorsKey, obj, OBJC_ASSOCIATION_RETAIN);
        
        objc_setAssociatedObject(obj, kBlockKey,block, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

@end




@implementation CallBackItem

- (void)dealloc{
    
    DeallocExecutorBlock block = objc_getAssociatedObject(self,kBlockKey);
    block ? block() : nil;
    
}
@end
