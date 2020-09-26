//
//  YZChatSplitViewController.h
//  MacIM
//
//  Created by yanzhen on 2020/9/26.
//

#import <Cocoa/Cocoa.h>
#import "YZChatSplitView.h"
NS_ASSUME_NONNULL_BEGIN

@interface YZChatSplitViewController : NSViewController
@property (nonatomic, strong, readonly) YZChatSplitView *splitView;
@end

NS_ASSUME_NONNULL_END
