//
//  YZChatWindow.m
//  MacIM
//
//  Created by yanzhen on 2020/9/26.
//

#import "YZChatWindow.h"
#import "YZChatTopBarView.h"
#import "YZChatViewController.h"

@interface YZChatWindow ()
@property (nonatomic, strong) YZChatTopBarView *topBarView;
@property (nonatomic, strong) YZChatViewController *chatVC;
@end

@implementation YZChatWindow
- (void)awakeFromNib {
    [super awakeFromNib];
    
}

@end
