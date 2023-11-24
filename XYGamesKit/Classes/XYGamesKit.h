//
//  XYGamesKit.h
//  Pods
//
//  Created by Paul on 2023/11/23.
//

#import <Foundation/Foundation.h>

//! Project version number for XYGamesKit.
FOUNDATION_EXPORT double NGSDKVersionNumber;

//! Project version string for XYGamesKit.
FOUNDATION_EXPORT const unsigned char NGSDKVersionString[];

/// 分享类型
typedef NS_ENUM(NSUInteger, NGShareMode) {
    NGShareModeSystem = 0, // 系统分享 每个平台有差异
    NGShareModeQQ,         // QQ分享
    NGShareModeWechat,     // 微信分享
};
