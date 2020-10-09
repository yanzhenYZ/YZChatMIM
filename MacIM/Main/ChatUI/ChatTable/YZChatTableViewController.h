//
//  YZChatTableViewController.h
//  MacIM
//
//  Created by yanzhen on 2020/9/26.
//

#import <Cocoa/Cocoa.h>


NS_ASSUME_NONNULL_BEGIN

@protocol YZChatTableViewControllerDelegate;
@interface YZChatTableViewController : NSViewController
@property (weak) id<YZChatTableViewControllerDelegate> delegate;
@end

NS_ASSUME_NONNULL_END

@protocol YZChatTableViewControllerDelegate <NSObject>

- (void)chatTableViewController:(YZChatTableViewController *)controller didSelected:(NSInteger)selectedRow;

@end
