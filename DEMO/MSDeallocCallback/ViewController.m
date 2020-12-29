//
//  ViewController.m
//  DeallocCallback
//
//  Created by J on 2017/6/17.
//  Copyright © 2017年 J. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "NSObject+MSDeallocCallBack.h"

@interface ViewController ()
@property(nonatomic,assign)SecondViewController* sc;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    
    NSLog(@"xxxx%@",self.sc);
    SecondViewController* sc  = [SecondViewController new];
    [self.navigationController pushViewController:sc animated:YES];
    self.sc = sc;
    
    WEAKSELF
    [self.sc deallocCallBack:^{
        weakSelf.sc = nil;
        NSLog(@"xxxx%@",weakSelf.sc);
        
    }];
}


@end
