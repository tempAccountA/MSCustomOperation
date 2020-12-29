# UIButton-Blocks

[![platform](http://img.shields.io/cocoapods/p/YYKit.svg?style=flat)](https://www.apple.com/nl/ios/)
[![GitHub license](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat)](https://github.com/JZJJZJ/MSDeallocCallback/blob/master/LICENSE)
[![CocoaPods](http://img.shields.io/cocoapods/v/YYKit.svg?style=flat)](http://cocoapods.org/?q=MSDeallocCallback)


## Features

- block syntax

## Installation

### Cocoapods(Recommended)

1. Add `pod 'MSDeallocCallBack'` to your Podfile.
2. Run `pod install`

### Manual

1. Add all files under `MSDeallocCallback` to your project

## Requirements

- iOS 5.0 and greater
- ARC


## How To Use

```objc

   Objective-C:

   #import "NSObject+MSDeallocCallBack.h"

    @property(nonatomic,assign)SecondViewController* sc;

    WEAKSELF
    [self.sc deallocCallBack:^{
        weakSelf.sc = nil;
        NSLog(@"xxxx%@",weakSelf.sc);
        
    }];
```
## License

MSDeallocCallback is available under the MIT license. See the LICENSE file for more info.
