# XYGamesKit

[![CI Status](https://img.shields.io/travis/564057354@qq.com/XYGamesKit.svg?style=flat)](https://travis-ci.org/564057354@qq.com/XYGamesKit)
[![Version](https://img.shields.io/cocoapods/v/XYGamesKit.svg?style=flat)](https://cocoapods.org/pods/XYGamesKit)
[![License](https://img.shields.io/cocoapods/l/XYGamesKit.svg?style=flat)](https://cocoapods.org/pods/XYGamesKit)
[![Platform](https://img.shields.io/cocoapods/p/XYGamesKit.svg?style=flat)](https://cocoapods.org/pods/XYGamesKit)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

XYGamesKit is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'XYGamesKit'
```

# NGK

## SDK对接文档地址：http://www.dosear.cn/sdk/sdk_mark.html
## SDK介绍：http://www.dosear.cn/sdk/sdk_function.html
## 过审手游：http://www.dosear.cn/api/web/auditeds
## Objective-C SDK: https://github.com/MF-dosear/X-Demo
## Swift SDK: https://github.com/MF-dosear/XYGamesKit
## Flutter SDK: https://github.com/MF-dosear/FlutterGamesKit

Swift SDK 示例

![WechatIMG63](https://github.com/MF-dosear/NGK/assets/20237339/ebbfe122-74e7-4aa1-9e5d-b82e61641260)

```swift
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    UIImage *image = [UIImage imageNamed:@"image"];
    UIImage *previewImage = [UIImage imageNamed:@"previewImage"];
    NSString *url = @"https://www.baidu.com";
    
    Role *role = [[Role alloc] init];
    role.roleID     = @"角色ID";
    role.roleName   = @"角色名称";
    role.roleLevel  = @"角色等级";
    role.serverId   = @"服务器ID";
    role.serverName = @"服务器名称";
    role.payLevel   = @"支付等级";
    
    Order *order = [[Order alloc] init];
    order.cpOrder   = @"cp订单号";
    order.cost      = @"价格";
    order.goodsID   = @"商品ID";
    order.goodsName = @"商品名称";
    order.extends   = @"透传参数";
    order.notifyURL = @"回调地址（可传参数";
    
    switch (indexPath.item) {
        case 0: [XYGamesKit sdkLoginWithAutomatic:true result:^(BOOL flag, NSString * _Nullable uid, NSString * _Nullable sid, NSString * _Nullable user_name) {
            
            NSLog(@"登录：flag = %d, uid = %@, sid = %@, user_name = %@", flag, uid, sid, user_name);
        }];
            break;
        case 1: [XYGamesKit sdkSubmitRoleWithRole:role result:^(BOOL flag) {
            NSLog(@"上传角色：flag = %d", flag);
        }];
            break;
        case 2: [XYGamesKit sdkPayWithRole:role order:order result:^(BOOL flag) {
            NSLog(@"支付：flag = %d", flag);
        }];
            break;
        case 3: [XYGamesKit sdkLogout];
            break;
        case 4: [XYGamesKit sdkShareWithMode:NGShareModeSystem title:@"标题" text:@"内容" url:nil image:image previewImage:nil];
            break;
        case 5: [XYGamesKit sdkShareWithMode:NGShareModeQQ title:@"标题" text:@"内容" url:nil image:image previewImage:previewImage];
            break;
        case 6: [XYGamesKit sdkShareWithMode:NGShareModeWechat title:@"标题" text:@"内容" url:nil image:image previewImage:previewImage];
            break;
        case 7: [XYGamesKit sdkShareWithMode:NGShareModeQQ title:@"标题" text:@"内容" url:url image:nil previewImage:nil];
            break;
        case 8: [XYGamesKit sdkShareWithMode:NGShareModeWechat title:@"标题" text:@"内容" url:url image:nil previewImage:previewImage];
            break;
        case 9: [XYGamesKit sdkShareWithMode:NGShareModeQQ title:@"标题" text:@"内容" url:nil image:nil previewImage:nil];
            break;
        case 10: [XYGamesKit sdkShareWithMode:NGShareModeWechat title:@"标题" text:@"内容" url:nil image:nil previewImage:nil];
            break;
        case 11: [XYGamesKit sdkOpenUrlWithUrl:@"https://www.baidu.com"];
            break;
        case 12: [XYGamesKit sdkBindPhone];
            break;
//        case 13: [XYGamesKit sdkShowTestVC];
//            break;
        default:
            break;
    }
}

```

## Author

Paul, dosear@qq.com

## License

XYGamesKit is available under the MIT license. See the LICENSE file for more info.
